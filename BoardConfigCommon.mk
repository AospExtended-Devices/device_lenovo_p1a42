#
# Copyright (C) 2016 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Include board config fragments
include device/lenovo/msm8916-common/board/*.mk

# Properties
TARGET_SYSTEM_PROP += device/lenovo/msm8916-common/system.prop

# CMHW
BOARD_HARDWARE_CLASS := device/lenovo/msm8916-common/cmhw/src
