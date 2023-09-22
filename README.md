# docker-rtlsdr

containerized librtlsdr

based on Arch Linux and using `extra/rtl-sdr`.

Default command starts rtl_tcp on port 1234 (IPv4 only due to rtl_tcp limitations).

Doesn’t use any environment variables right now, just use a custom command.

Don’t forget to add `-a 0.0.0.0`

```sh
% rtl_tcp -h
rtl_tcp: invalid option -- 'h'
rtl_tcp, an I/Q spectrum server for RTL2832 based SDR-receivers
rtl_tcp version 0.8 github.com/librtlsdr (Sep  4 2023)
rtl-sdr library 0.8 github.com/librtlsdr (Sep  4 2023)

Usage:	rtl_tcp [-a listen address]
  [-p control listen port (default: 1234)]
  [-r response listen port: 0 = off; 1 (=default) for On at control listen port +1; or port]
  [-I infrared sensor listen port (default: 0=none)]
  [-W infrared sensor query wait interval usec (default: 10000)]
  [-f frequency to tune to [Hz]]
  [-g gain in dB (default: 0 for auto)]
  [-s samplerate in Hz (default: 2048000 Hz)]
  [-b number of buffers (default: 15, set by library)]
  [-l length of single buffer in units of 512 samples (default: 32 was 256)]
  [-n max number of linked list buffers to keep (default: 500)]
  [-w rtlsdr tuner bandwidth [Hz] (for R820T/2 and E4000 tuners)]
  [-d device index or serial (default: 0)]
  [-P ppm_error (default: 0)]
  [-O	set RTL driver options seperated with ':', e.g. -O 'bc=30000:agc=0' ]
    f=<freqHz>            set tuner frequency
    bw=<bw_in_kHz>        set tuner bandwidth
    bc=<if_in_Hz>         set band center relative to the complex-base-band '0' frequency
                           puts the tuner frequency onto this if frequency (default: 0)
    sb=<sideband>         set tuner sideband/mirror: 'L' or '0' for lower side band,
                           'U' or '1' for upper side band. default for R820T/2: 'L'
    agc=<tuner_gain_mode> activates tuner agc with '1'. deactivates with '0'
    gain=<tenth_dB>       set tuner gain. 400 for 40.0 dB
    ifm=<tuner_if_mode>   set R820T/2 tuner's variable-gain-amplifier (VGA). default: 10011
                           0: activate agc controlled from RTL2832's feedback
                           around 0: set gain in 10th dB. 408 for +40.8 dB
                           5000+val: set gain to val in 10th dB. 5408 for +40.8 dB
                           10000+idx: set gain idx 0 .. 15: 10015 for maximum gain
    dagc=<rtl_agc>        set RTL2832's digital agc (after ADC). 1 to activate. 0 to deactivate
    ds=<direct_sampling>  deactivate/bypass tuner with 1
    dm=<ds_mode_thresh>   set dynamic direct threshold mode or threshold frequency:
                           0: use I & Q; 1: use I; 2: use Q; 3: use I below threshold frequency;
                           4: use Q below threshold frequency (=RTL-SDR v3)
                           other values set the threshold frequency
    harm=<Nth_harmonic>   R820T/2: use Nth harmonic for frequencies above 1.76 GHz. default: 5
    vcocmin=<current>     set R820T/2 VCO current min: 0..7: higher value is more current
    vcocmax=<current>     set R820T/2 VCO current max: 0..7
    vcoalgo=<algo>        set R820T/2 VCO algorithm. 0: default. 1: with vcomax=3.9G. 2: Youssef/Carl
    Tp=<gpio_pin>         set GPIO pin for Bias T, default =0 for rtl-sdr.com compatible V3
    T=<bias_tee>          1 activates power at antenna one some dongles, e.g. rtl-sdr.com's V3
  [-T enable bias-T on GPIO PIN 0 (works for rtl-sdr.com v3 dongles)]
  [-D direct_sampling_mode (default: 0, 1 = I, 2 = Q, 3 = I below threshold, 4 = Q below threshold)]
  [-D direct_sampling_threshold_frequency (default: 0 use tuner specific frequency threshold for 3 and 4)]
  [-v increase verbosity (default: 0)]
```
