/*
   Copyright (c) 2016, The Linux Foundation. All rights reserved.
   Copyright (C) 2016, The CyanogenMod Project
   Copyright (C) 2016-2017, Nikolai Petrenko
   Copyright (C) 2017, The LineageOS Project

   Redistribution and use in source and binary forms, with or without
   modification, are permitted provided that the following conditions are
   met:
    * Redistributions of source code must retain the above copyright
      notice, this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above
      copyright notice, this list of conditions and the following
      disclaimer in the documentation and/or other materials provided
      with the distribution.
    * Neither the name of The Linux Foundation nor the names of its
      contributors may be used to endorse or promote products derived
      from this software without specific prior written permission.

   THIS SOFTWARE IS PROVIDED "AS IS" AND ANY EXPRESS OR IMPLIED
   WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
   MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT
   ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS
   BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
   CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
   SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR
   BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
   WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE
   OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN
   IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

#include <cstdlib>
#include <fstream>
#include <string>
#include <sys/sysinfo.h>
#define _REALLY_INCLUDE_SYS__SYSTEM_PROPERTIES_H_
#include <sys/_system_properties.h>

#include "vendor_init.h"
#include "property_service.h"
#include "log.h"
#include "util.h"

void property_override(char const prop[], char const value[])
{
    prop_info *pi;

    pi = (prop_info*) __system_property_find(prop);
    if (pi)
        __system_property_update(pi, value, strlen(value));
    else
        __system_property_add(prop, strlen(prop), value, strlen(value));
}

int is3GB()
{
    struct sysinfo sys;
    sysinfo(&sys);
    return sys.totalram > 2048ull * 1024 * 1024;
}

void vendor_load_properties()
{
    if (is3GB()) {
        property_override("ro.product.model", "Vibe P1 Turbo");
    // dalvik stuff
        property_override("dalvik.vm.heapstartsize", "8m");
        property_override("dalvik.vm.heapgrowthlimit", "288m");
        property_override("dalvik.vm.heapsize", "768m");
        property_override("dalvik.vm.heaptargetutilization", "0.75");
        property_override("dalvik.vm.heapminfree", "512k");
        property_override("dalvik.vm.heapmaxfree", "8m");
    // hwui stuff
        property_override("ro.hwui.texture_cache_size", "72");
        property_override("ro.hwui.layer_cache_size", "48");
        property_override("ro.hwui.r_buffer_cache_size", "8");
        property_override("ro.hwui.path_cache_size", "32");
        property_override("ro.hwui.gradient_cache_size", "1");
        property_override("ro.hwui.drop_shadow_cache_size", "6");
        property_override("ro.hwui.texture_cache_flushrate", "0.4");
        property_override("ro.hwui.text_small_cache_width", "1024");
        property_override("ro.hwui.text_small_cache_height", "1024");
        property_override("ro.hwui.text_large_cache_width", "2048");
        property_override("ro.hwui.text_large_cache_height", "1024");
    } else {
        property_override("ro.product.model", "Vibe P1");
      // dalvik stuff
        property_override("dalvik.vm.heapstartsize", "16m");
        property_override("dalvik.vm.heapgrowthlimit", "192m");
        property_override("dalvik.vm.heapsize", "512m");
        property_override("dalvik.vm.heaptargetutilization", "0.75");
        property_override("dalvik.vm.heapminfree", "2m");
        property_override("dalvik.vm.heapmaxfree", "8m");
     // hwui stuff
        property_override("ro.hwui.texture_cache_size", "72");
        property_override("ro.hwui.layer_cache_size", "48");
        property_override("ro.hwui.r_buffer_cache_size", "8");
        property_override("ro.hwui.path_cache_size", "32");
        property_override("ro.hwui.gradient_cache_size", "1");
        property_override("ro.hwui.drop_shadow_cache_size", "6");
        property_override("ro.hwui.texture_cache_flushrate", "0.4");
        property_override("ro.hwui.text_small_cache_width", "1024");
        property_override("ro.hwui.text_small_cache_height", "1024");
        property_override("ro.hwui.text_large_cache_width", "2048");
        property_override("ro.hwui.text_large_cache_height", "1024");
    }
    property_override("ro.build.product", "p1a42");
    property_override("ro.product.device", "p1a42");
    property_override("ro.build.description", "passion_row-user 6.0.1 MMB29M P1a42_S288_160721_ROW release-keys");
    property_override("ro.build.fingerprint", "Lenovo/passion_row/P1a42:6.0.1/MMB29M/P1a42_S288_160721_ROW:user/release-keys");
}
