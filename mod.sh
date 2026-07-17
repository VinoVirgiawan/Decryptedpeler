#!/system/bin/sh

# ============================================================
#  OPTIMIZER PRO ULTIMATE v2.0
#  Game Performance Engine
#  Designed for Free Fire & Max
# ============================================================

clear

# ============================================================
#  HEADER UTAMA
# ============================================================
echo "╔═══════════════════════════════════════════════════════════╗"
echo "║                                                           ║"
echo "║                   ✦  OPTIMIZER PRO  ✦                    ║"
echo "║              Performance Engine v2.0                     ║"
echo "║                                                           ║"
echo "║            refine • accelerate • elevate                 ║"
echo "║                                                           ║"
echo "╚═══════════════════════════════════════════════════════════╝"
echo ""

# ============================================================
#  TOUCH RESPONSE
# ============================================================
echo "┌──���────────────────────────────────────────────────────────┐"
echo "│  ◈  TOUCH RESPONSE                                      │"
echo "└───────────────────────────────────────────────────────────┘"
settings put global animator_duration_scale 0
settings put global transition_animation_scale 0
settings put global window_animation_scale 0
settings put system enable_ramdumps 0
echo "  ✓ Animation scales disabled"
echo "  ✓ RAM dumps disabled"
echo ""

# ============================================================
#  UPSCALE ENGINE
# ============================================================
echo "┌───────────────────────────────────────────────────────────┐"
echo "│  ◈  DYNAMIC DRAG                                      │"
echo "└───────────────────────────────────────────────────────────┘"
cmd game set --downscale 1.2 com.dts.freefireth >/dev/null 2>&1
cmd game set --downscale 1.2 com.dts.freefiremax >/dev/null 2>&1
device_config put game_overlay com.dts.freefireth mode=1,downscaleFactor=1.2:mode=2,downscaleFactor=1.2:mode=3,downscaleFactor=1.2
device_config put game_overlay com.dts.freefiremax mode=1,downscaleFactor=1.2:mode=2,downscaleFactor=1.2:mode=3,downscaleFactor=1.2
setprop debug.persist.sys.ui.hw true
setprop debug.persist.sys.gpu.2d.enable true
setprop debug.hwui.renderer skiagl
echo "  ✓ Downscale factor set to 1.2"
echo "  ✓ GPU rendering enabled"
echo ""

# ============================================================
#  FPS LOCK • 120HZ
# ============================================================
echo "┌───────────────────────────────────────────────────────────┐"
echo "│  ◈  FPS LOCK • 120HZ                                   │"
echo "└───────────────────────────────────────────────────────────┘"
settings put system peak_refresh_rate 120
settings put system min_refresh_rate 120
settings put global refresh_rate 120
setprop debug.graphics.fps 120
setprop debug.sf.fps 120
setprop debug.egl.fps 120
setprop debug.gpurend.fps 120
setprop debug.hwui.fps 120
setprop debug.renderer.max_fps 120
setprop debug.composition.fps 120
setprop debug.sf.early_phase_offset_ns 500000
setprop debug.sf.early_app_phase_offset_ns 500000
echo "  ✓ Refresh rate locked at 120Hz"
echo "  ✓ FPS caps removed"
echo ""

# ============================================================
#  IMPROVE SENSITIVITY
# ============================================================
echo "┌───────────────────────────────────────────────────────────┐"
echo "│  ◈  IMPROVE SENSITIVITY                                 │"
echo "└───────────────────────────────────────────────────────────┘"
settings put global touch_response 1
settings put global touch_boost 1
settings put global pointer_speed 10
settings put system touch_sampling_rate 480
settings put system touch_sampling_rate_default 480
settings put system touch_polling_interval 1
settings put global fling_velocity 15000
settings put global max_fling_velocity 15000
settings put global min_fling_velocity 5000
settings put global scroll_friction 0.005
settings put global force_gpu_rendering 1
settings put global hardware_accelerated 1
setprop debug.input.touch_sensitivity 2
setprop debug.input.scroll_sensitivity 2
setprop debug.input.pointer_acceleration 1
setprop debug.input.rotation_gesture 1
setprop debug.sf.touch_boost_refreshrate 1
setprop debug.sf.scroll_boost_refreshrate 1
echo "  ✓ Touch sensitivity optimized"
echo "  ✓ GPU acceleration enabled"
echo ""

# ============================================================
#  GYRO SENSITIVITY
# ============================================================
echo "┌───────────────────────────────────────────────────────────┐"
echo "│  ◈  GYRO SENSITIVITY                                   │"
echo "└───────────────────────────────────────────────────────────┘"
setprop debug.gyro.sensitivity 1
setprop debug.gyro.threshold 0.1
setprop debug.sensor.gyro_rate 200
setprop debug.sensor.accel_rate 200
echo "  ✓ Gyro sensitivity optimized"
echo ""

# ============================================================
#  FSTRIM & CACHE
# ============================================================
echo "┌──────────────────────────────────────────��────────────────┐"
echo "│  ◈  FSTRIM & CACHE                                     │"
echo "└───────────────────────────────────────────────────────────┘"
settings put global fstrim 1
cmd package trim-caches
echo "  ✓ Cache trimmed"
echo ""

# ============================================================
#  MEMORY OPTIMIZER
# ============================================================
echo "┌───────────────────────────────────────────────────────────┐"
echo "│  ◈  MEMORY OPTIMIZER                                   │"
echo "└───────────────────────────────────────────────────────────┘"
settings put global background_process_limit 15
settings put global activity_manager_constants max_cached_processes=12
cmd activity kill-all
echo "  ✓ Background processes limited"
echo "  ✓ Memory cleared"
echo ""

# ============================================================
#  FOOTER
# ============================================================
echo "╔══���════════════════════════════════════════════════════════╗"
echo "║                                                           ║"
echo "║                    ✓  COMPLETE  ✓                        ║"
echo "║                                                           ║"
echo "║        touch • fps • dynamic drag • sensitivity               ║"
echo "║           gyro • cache • memory                          ║"
echo "║                                                           ║"
echo "║              system optimized                             ║"
echo "║                                                           ║"
echo "╚═══════════════════════════════════════════════════════════╝"
echo ""
echo "  MAU LEBIH GACOR? BUY APP/MODULE PREMIUM KAMI DI SALURAN RESMI"
am start -a android.intent.action.VIEW -d "https://whatsapp.com/channel/0029Vb8IxtQ23n3ZZoyngl3B"
