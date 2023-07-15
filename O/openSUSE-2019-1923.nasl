#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from openSUSE Security Update openSUSE-2019-1923.
#
# The text description of this plugin is (C) SUSE LLC.
#

include("compat.inc");

if (description)
{
  script_id(128011);
  script_version("1.4");
  script_cvs_date("Date: 2020/02/18");

  script_cve_id("CVE-2018-20855", "CVE-2019-10207", "CVE-2019-1125", "CVE-2019-11810", "CVE-2019-13631", "CVE-2019-13648", "CVE-2019-14283", "CVE-2019-14284");

  script_name(english:"openSUSE Security Update : the Linux Kernel (openSUSE-2019-1923)");
  script_summary(english:"Check for the openSUSE-2019-1923 patch");

  script_set_attribute(
    attribute:"synopsis", 
    value:"The remote openSUSE host is missing a security update."
  );
  script_set_attribute(
    attribute:"description", 
    value:
"The openSUSE Leap 15.1 kernel was updated to receive various security
and bugfixes.

The following security bugs were fixed :

  - CVE-2019-1125: Fix Spectre V1 variant memory disclosure
    by speculation over the SWAPGS instruction
    (bsc#1139358).

  - CVE-2019-10207: A NULL pointer dereference was possible
    in the bluetooth stack, which could lead to crashes.
    (bnc#1123959 bnc#1142857).

  - CVE-2018-20855: In create_qp_common in
    drivers/infiniband/hw/mlx5/qp.c, mlx5_ib_create_qp_resp
    was never initialized, resulting in a leak of stack
    memory to userspace (bnc#1143045).

  - CVE-2019-14284: drivers/block/floppy.c allowed a denial
    of service by setup_format_params division-by-zero. Two
    consecutive ioctls can trigger the bug: the first one
    should set the drive geometry with .sect and .rate
    values that make F_SECT_PER_TRACK be zero. Next, the
    floppy format operation should be called. It can be
    triggered by an unprivileged local user even when a
    floppy disk has not been inserted. (bnc#1143189).

  - CVE-2019-14283: set_geometry in drivers/block/floppy.c
    did not validate the sect and head fields, as
    demonstrated by an integer overflow and out-of-bounds
    read. It can be triggered by an unprivileged local user
    when a floppy disk has been inserted. (bnc#1143191).

  - CVE-2019-11810: A NULL pointer dereference can occur
    when megasas_create_frame_pool() fails in
    megasas_alloc_cmds() in
    drivers/scsi/megaraid/megaraid_sas_base.c. This causes a
    Denial of Service, related to a use-after-free
    (bnc#1134399).

  - CVE-2019-13648: In the Linux kernel on the powerpc
    platform, when hardware transactional memory is
    disabled, a local user can cause a denial of service (TM
    Bad Thing exception and system crash) via a sigreturn()
    system call that sends a crafted signal frame. This
    affects arch/powerpc/kernel/signal_32.c and
    arch/powerpc/kernel/signal_64.c (bnc#1142254
    bnc#1142265).

  - CVE-2019-13631: In parse_hid_report_descriptor in
    drivers/input/tablet/gtco.c in the Linux kernel, a
    malicious USB device can send an HID report that
    triggers an out-of-bounds write during generation of
    debugging messages (bnc#1142023).

The following non-security bugs were fixed :

  - 9p: acl: fix uninitialized iattr access (bsc#1051510).

  - 9p: p9dirent_read: check network-provided name length
    (bsc#1051510).

  - 9p: pass the correct prototype to read_cache_page
    (bsc#1051510).

  - 9p/rdma: do not disconnect on down_interruptible EAGAIN
    (bsc#1051510).

  - 9p/rdma: remove useless check in cm_event_handler
    (bsc#1051510).

  - 9p/virtio: Add cleanup path in p9_virtio_init
    (bsc#1051510).

  - 9p/xen: Add cleanup path in p9_trans_xen_init
    (bsc#1051510).

  - 9p/xen: fix check for xenbus_read error in front_probe
    (bsc#1051510).

  - acpi/arm64: ignore 5.1 FADTs that are reported as 5.0
    (bsc#1051510).

  - ACPI/IORT: Fix off-by-one check in
    iort_dev_find_its_id() (bsc#1051510).

  - acpi/nfit: Always dump _DSM output payload
    (bsc#1142351).

  - ACPI: PM: Fix regression in acpi_device_set_power()
    (bsc#1051510).

  - Add back sibling paca poiter to paca (bsc#1055117).

  - Add support for crct10dif-vpmsum ().

  - af_key: fix leaks in key_pol_get_resp and dump_sp
    (bsc#1051510).

  - af_packet: Block execution of tasks waiting for transmit
    to complete in AF_PACKET (networking-stable-19_07_02).

  - af_unix: remove redundant lockdep class (git-fixes).

  - ALSA: compress: Be more restrictive about when a drain
    is allowed (bsc#1051510).

  - ALSA: compress: Do not allow paritial drain operations
    on capture streams (bsc#1051510).

  - ALSA: compress: Fix regression on compressed capture
    streams (bsc#1051510).

  - ALSA: compress: Prevent bypasses of set_params
    (bsc#1051510).

  - ALSA: hda - Add a conexant codec entry to let mute led
    work (bsc#1051510).

  - ALSA: hda - Do not resume forcibly i915 HDMI/DP codec
    (bsc#1111666).

  - ALSA: hda: Fix 1-minute detection delay when i915 module
    is not available (bsc#1111666).

  - ALSA: hda - Fix intermittent CORB/RIRB stall on Intel
    chips (bsc#1111666).

  - ALSA: hda/hdmi - Fix i915 reverse port/pin mapping
    (bsc#1111666).

  - ALSA: hda/hdmi - Remove duplicated define (bsc#1111666).

  - ALSA: hda - Optimize resume for codecs without jack
    detection (bsc#1111666).

  - ALSA: hda/realtek: apply ALC891 headset fixup to one
    Dell machine (bsc#1051510).

  - ALSA: hda/realtek - Fixed Headphone Mic can't record on
    Dell platform (bsc#1051510).

  - ALSA: hda/realtek - Headphone Mic can't record after S3
    (bsc#1051510).

  - ALSA: line6: Fix a typo (bsc#1051510).

  - ALSA: line6: Fix wrong altsetting for LINE6_PODHD500_1
    (bsc#1051510).

  - ALSA: pcm: fix lost wakeup event scenarios in
    snd_pcm_drain (bsc#1051510).

  - ALSA: seq: Break too long mutex context in the write
    loop (bsc#1051510).

  - ALSA: usb-audio: Add quirk for Focusrite Scarlett Solo
    (bsc#1051510).

  - ALSA: usb-audio: Add quirk for MOTU MicroBook II
    (bsc#1051510).

  - ALSA: usb-audio: Cleanup DSD whitelist (bsc#1051510).

  - ALSA: usb-audio: Enable .product_name override for
    Emagic, Unitor 8 (bsc#1051510).

  - ALSA: usb-audio: Fix gpf in snd_usb_pipe_sanity_check
    (bsc#1051510).

  - ALSA: usb-audio: fix Line6 Helix audio format rates
    (bsc#1111666).

  - ALSA: usb-audio: Sanity checks for each pipe and EP
    types (bsc#1051510).

  - arm64: do not override dma_max_pfn (jsc#SLE-6197
    bsc#1140559 LTC#173150).

  - arm64: kvm: Fix architecturally invalid reset value for
    FPEXC32_EL2 (bsc#1133021).

  - ARM: kvm: Add SMCCC_ARCH_WORKAROUND_1 fast handling
    (bsc#1133021).

  - ARM: kvm: report support for SMCCC_ARCH_WORKAROUND_1
    (bsc#1133021).

  - ASoC : cs4265 : readable register too low (bsc#1051510).

  - ASoC: max98090: remove 24-bit format support if RJ is 0
    (bsc#1051510).

  - ASoC: soc-pcm: BE dai needs prepare when pause release
    after resume (bsc#1051510).

  - ath10k: add missing error handling (bsc#1111666).

  - ath10k: add peer id check in ath10k_peer_find_by_id
    (bsc#1111666).

  - ath10k: destroy sdio workqueue while remove sdio module
    (bsc#1111666).

  - ath10k: Do not send probe response template for mesh
    (bsc#1111666).

  - ath10k: Fix encoding for protected management frames
    (bsc#1111666).

  - ath10k: fix incorrect multicast/broadcast rate setting
    (bsc#1111666).

  - ath10k: fix PCIE device wake up failed (bsc#1111666).

  - ath6kl: add some bounds checking (bsc#1051510).

  - ath9k: Check for errors when reading SREV register
    (bsc#1111666).

  - ath9k: correctly handle short radar pulses
    (bsc#1111666).

  - ath: DFS JP domain W56 fixed pulse type 3 RADAR
    detection (bsc#1111666).

  - batman-adv: fix for leaked TVLV handler (bsc#1051510).

  - bcache: acquire bch_register_lock later in
    cached_dev_detach_finish() (bsc#1140652).

  - bcache: acquire bch_register_lock later in
    cached_dev_detach_finish() (bsc#1140652).

  - bcache: acquire bch_register_lock later in
    cached_dev_free() (bsc#1140652).

  - bcache: acquire bch_register_lock later in
    cached_dev_free() (bsc#1140652).

  - bcache: add code comments for journal_read_bucket()
    (bsc#1140652).

  - bcache: add code comments for journal_read_bucket()
    (bsc#1140652).

  - bcache: Add comments for blkdev_put() in registration
    code path (bsc#1140652).

  - bcache: Add comments for blkdev_put() in registration
    code path (bsc#1140652).

  - bcache: add comments for closure_fn to be called in
    closure_queue() (bsc#1140652).

  - bcache: add comments for closure_fn to be called in
    closure_queue() (bsc#1140652).

  - bcache: add comments for kobj release callback routine
    (bsc#1140652).

  - bcache: add comments for kobj release callback routine
    (bsc#1140652).

  - bcache: add comments for mutex_lock(&b->write_lock)
    (bsc#1140652).

  - bcache: add comments for mutex_lock(&b->write_lock)
    (bsc#1140652).

  - bcache: add error check for calling register_bdev()
    (bsc#1140652).

  - bcache: add error check for calling register_bdev()
    (bsc#1140652).

  - bcache: add failure check to run_cache_set() for journal
    replay (bsc#1140652).

  - bcache: add failure check to run_cache_set() for journal
    replay (bsc#1140652).

  - bcache: add io error counting in
    write_bdev_super_endio() (bsc#1140652).

  - bcache: add io error counting in
    write_bdev_super_endio() (bsc#1140652).

  - bcache: add more error message in
    bch_cached_dev_attach() (bsc#1140652).

  - bcache: add more error message in
    bch_cached_dev_attach() (bsc#1140652).

  - bcache: add pendings_cleanup to stop pending bcache
    device (bsc#1140652).

  - bcache: add pendings_cleanup to stop pending bcache
    device (bsc#1140652).

  - bcache: add reclaimed_journal_buckets to struct
    cache_set (bsc#1140652).

  - bcache: add reclaimed_journal_buckets to struct
    cache_set (bsc#1140652).

  - bcache: add return value check to bch_cached_dev_run()
    (bsc#1140652).

  - bcache: add return value check to bch_cached_dev_run()
    (bsc#1140652).

  - bcache: avoid a deadlock in bcache_reboot()
    (bsc#1140652).

  - bcache: avoid a deadlock in bcache_reboot()
    (bsc#1140652).

  - bcache: avoid clang -Wunintialized warning
    (bsc#1140652).

  - bcache: avoid clang -Wunintialized warning
    (bsc#1140652).

  - bcache: avoid flushing btree node in cache_set_flush()
    if io disabled (bsc#1140652).

  - bcache: avoid flushing btree node in cache_set_flush()
    if io disabled (bsc#1140652).

  - bcache: avoid potential memleak of list of
    journal_replay(s) in the CACHE_SYNC branch of
    run_cache_set (bsc#1140652).

  - bcache: avoid potential memleak of list of
    journal_replay(s) in the CACHE_SYNC branch of
    run_cache_set (bsc#1140652).

  - bcache: check CACHE_SET_IO_DISABLE bit in bch_journal()
    (bsc#1140652).

  - bcache: check CACHE_SET_IO_DISABLE bit in bch_journal()
    (bsc#1140652).

  - bcache: check CACHE_SET_IO_DISABLE in allocator code
    (bsc#1140652).

  - bcache: check CACHE_SET_IO_DISABLE in allocator code
    (bsc#1140652).

  - bcache: check c->gc_thread by IS_ERR_OR_NULL in
    cache_set_flush() (bsc#1140652).

  - bcache: check c->gc_thread by IS_ERR_OR_NULL in
    cache_set_flush() (bsc#1140652).

  - bcache: Clean up bch_get_congested() (bsc#1140652).

  - bcache: Clean up bch_get_congested() (bsc#1140652).

  - bcache: destroy dc->writeback_write_wq if failed to
    create dc->writeback_thread (bsc#1140652).

  - bcache: destroy dc->writeback_write_wq if failed to
    create dc->writeback_thread (bsc#1140652).

  - bcache: do not assign in if condition in
    bcache_device_init() (bsc#1140652).

  - bcache: do not set max writeback rate if gc is running
    (bsc#1140652).

  - bcache: do not set max writeback rate if gc is running
    (bsc#1140652).

  - bcache: fix a race between cache register and cacheset
    unregister (bsc#1140652).

  - bcache: fix a race between cache register and cacheset
    unregister (bsc#1140652).

  - bcache: fix crashes stopping bcache device before read
    miss done (bsc#1140652).

  - bcache: fix crashes stopping bcache device before read
    miss done (bsc#1140652).

  - bcache: fix failure in journal relplay (bsc#1140652).

  - bcache: fix failure in journal relplay (bsc#1140652).

  - bcache: fix inaccurate result of unused buckets
    (bsc#1140652).

  - bcache: fix inaccurate result of unused buckets
    (bsc#1140652).

  - bcache: fix mistaken sysfs entry for io_error counter
    (bsc#1140652).

  - bcache: fix mistaken sysfs entry for io_error counter
    (bsc#1140652).

  - bcache: fix potential deadlock in cached_def_free()
    (bsc#1140652).

  - bcache: fix potential deadlock in cached_def_free()
    (bsc#1140652).

  - bcache: fix race in btree_flush_write() (bsc#1140652).

  - bcache: fix race in btree_flush_write() (bsc#1140652).

  - bcache: fix return value error in bch_journal_read()
    (bsc#1140652).

  - bcache: fix return value error in bch_journal_read()
    (bsc#1140652).

  - bcache: fix stack corruption by PRECEDING_KEY()
    (bsc#1140652).

  - bcache: fix stack corruption by PRECEDING_KEY()
    (bsc#1140652).

  - bcache: fix wrong usage use-after-freed on keylist in
    out_nocoalesce branch of btree_gc_coalesce
    (bsc#1140652).

  - bcache: fix wrong usage use-after-freed on keylist in
    out_nocoalesce branch of btree_gc_coalesce
    (bsc#1140652).

  - bcache: ignore read-ahead request failure on backing
    device (bsc#1140652).

  - bcache: ignore read-ahead request failure on backing
    device (bsc#1140652).

  - bcache: improve bcache_reboot() (bsc#1140652).

  - bcache: improve bcache_reboot() (bsc#1140652).

  - bcache: improve error message in bch_cached_dev_run()
    (bsc#1140652).

  - bcache: improve error message in bch_cached_dev_run()
    (bsc#1140652).

  - bcache: make bset_search_tree() be more understandable
    (bsc#1140652).

  - bcache: make bset_search_tree() be more understandable
    (bsc#1140652).

  - bcache: make is_discard_enabled() static (bsc#1140652).

  - bcache: make is_discard_enabled() static (bsc#1140652).

  - bcache: more detailed error message to
    bcache_device_link() (bsc#1140652).

  - bcache: more detailed error message to
    bcache_device_link() (bsc#1140652).

  - bcache: move definition of 'int ret' out of macro
    read_bucket() (bsc#1140652).

  - bcache: move definition of 'int ret' out of macro
    read_bucket() (bsc#1140652).

  - bcache: never set KEY_PTRS of journal key to 0 in
    journal_reclaim() (bsc#1140652).

  - bcache: never set KEY_PTRS of journal key to 0 in
    journal_reclaim() (bsc#1140652).

  - bcache: only clear BTREE_NODE_dirty bit when it is set
    (bsc#1140652).

  - bcache: only clear BTREE_NODE_dirty bit when it is set
    (bsc#1140652).

  - bcache: only set BCACHE_DEV_WB_RUNNING when cached
    device attached (bsc#1140652).

  - bcache: only set BCACHE_DEV_WB_RUNNING when cached
    device attached (bsc#1140652).

  - bcache: performance improvement for btree_flush_write()
    (bsc#1140652).

  - bcache: performance improvement for btree_flush_write()
    (bsc#1140652).

  - bcache: remove redundant LIST_HEAD(journal) from
    run_cache_set() (bsc#1140652).

  - bcache: remove redundant LIST_HEAD(journal) from
    run_cache_set() (bsc#1140652).

  - bcache: remove retry_flush_write from struct cache_set
    (bsc#1140652).

  - bcache: remove retry_flush_write from struct cache_set
    (bsc#1140652).

  - bcache: remove unncessary code in bch_btree_keys_init()
    (bsc#1140652).

  - bcache: remove unncessary code in bch_btree_keys_init()
    (bsc#1140652).

  - bcache: remove unnecessary prefetch() in
    bset_search_tree() (bsc#1140652).

  - bcache: remove unnecessary prefetch() in
    bset_search_tree() (bsc#1140652).

  - bcache: remove 'XXX:' comment line from run_cache_set()
    (bsc#1140652).

  - bcache: remove 'XXX:' comment line from run_cache_set()
    (bsc#1140652).

  - bcache: return error immediately in bch_journal_replay()
    (bsc#1140652).

  - bcache: return error immediately in bch_journal_replay()
    (bsc#1140652).

  - bcache: Revert 'bcache: fix high CPU occupancy during
    journal' (bsc#1140652).

  - bcache: Revert 'bcache: fix high CPU occupancy during
    journal' (bsc#1140652).

  - bcache: Revert 'bcache: free heap cache_set->flush_btree
    in bch_journal_free' (bsc#1140652).

  - bcache: Revert 'bcache: free heap cache_set->flush_btree
    in bch_journal_free' (bsc#1140652).

  - bcache: set largest seq to ja->seq[bucket_index] in
    journal_read_bucket() (bsc#1140652).

  - bcache: set largest seq to ja->seq[bucket_index] in
    journal_read_bucket() (bsc#1140652).

  - bcache: shrink btree node cache after bch_btree_check()
    (bsc#1140652).

  - bcache: shrink btree node cache after bch_btree_check()
    (bsc#1140652).

  - bcache: stop writeback kthread and kworker when
    bch_cached_dev_run() failed (bsc#1140652).

  - bcache: stop writeback kthread and kworker when
    bch_cached_dev_run() failed (bsc#1140652).

  - bcache: use sysfs_match_string() instead of
    __sysfs_match_string() (bsc#1140652).

  - bcache: use sysfs_match_string() instead of
    __sysfs_match_string() (bsc#1140652).

  - be2net: Fix number of Rx queues used for flow hashing
    (networking-stable-19_06_18).

  - be2net: Signal that the device cannot transmit during
    reconfiguration (bsc#1127315).

  - be2net: Synchronize be_update_queues with dev_watchdog
    (bsc#1127315).

  - block, bfq: NULL out the bic when it's no longer valid
    (bsc#1142359).

  - Bluetooth: 6lowpan: search for destination address in
    all peers (bsc#1051510).

  - Bluetooth: Add SMP workaround Microsoft Surface
    Precision Mouse bug (bsc#1051510).

  - Bluetooth: Check state in l2cap_disconnect_rsp
    (bsc#1051510).

  - Bluetooth: hci_bcsp: Fix memory leak in rx_skb
    (bsc#1051510).

  - Bluetooth: validate BLE connection interval updates
    (bsc#1051510).

  - bnx2fc_fcoe: Use skb_queue_walk_safe() (bsc#1136502
    jsc#SLE-4703).

  - bnx2x: Prevent load reordering in tx completion
    processing (bsc#1142868).

  - bnxt_en: Cap the returned MSIX vectors to the RDMA
    driver (bsc#1134090 jsc#SLE-5954).

  - bnxt_en: Disable bus master during PCI shutdown and
    driver unload (bsc#1104745).

  - bnxt_en: Fix aggregation buffer leak under OOM condition
    (networking-stable-19_05_31).

  - bnxt_en: Fix statistics context reservation logic for
    RDMA driver (bsc#1104745).

  - bnxt_en: Suppress error messages when querying DSCP DCB
    capabilities (bsc#1104745).

  - bonding: Always enable vlan tx offload
    (networking-stable-19_07_02).

  - bonding: fix arp_validate toggling in active-backup mode
    (networking-stable-19_05_14).

  - bonding: Force slave speed check after link state
    recovery for 802.3ad (bsc#1137584).

  - bpf: btf: fix the brackets of BTF_INT_OFFSET()
    (bsc#1083647).

  - bpf: fix callees pruning callers (bsc#1109837).

  - bpf: fix nested bpf tracepoints with per-cpu data
    (bsc#1083647).

  - bpf, x64: fix stack layout of JITed bpf code
    (bsc#1083647).

  - bpf, x64: save 5 bytes in prologue when ebpf insns came
    from cbpf (bsc#1083647).

  - bridge: Fix error path for kobject_init_and_add()
    (networking-stable-19_05_14).

  - btrfs: fix race between block group removal and block
    group allocation (bsc#1143003).

  - btrfs-kill-btrfs_clear_path_blocking.patch:
    (bsc#1140139).

  - btrfs: scrub: add memalloc_nofs protection around
    init_ipath (bsc#1086103).

  - btrfs: use GFP_KERNEL in init_ipath (bsc#1086103).

  - carl9170: fix misuse of device driver API (bsc#1111666).

  - ceph: fix iov_iter issues in ceph_direct_read_write()
    (bsc#1141450). blacklist.conf: dropped patch from
    blacklist.

  - cgroup: Use css_tryget() instead of css_tryget_online()
    in task_get_css() (bsc#1141478).

  - clk: qcom: Fix -Wunused-const-variable (bsc#1051510).

  - clk: rockchip: Do not yell about bad mmc phases when
    getting (bsc#1051510).

  - clk: tegra210: fix PLLU and PLLU_OUT1 (bsc#1051510).

  - Correct iwlwifi 22000 series ucode file name
    (bsc#1142673) 

  - Correct the buggy backport about AER / DPC pcie stuff
    (bsc#1142623)

  - cpufreq: acpi-cpufreq: Report if CPU does not support
    boost technologies (bsc#1051510).

  - cpufreq: brcmstb-avs-cpufreq: Fix initial command check
    (bsc#1051510).

  - cpufreq: brcmstb-avs-cpufreq: Fix types for
    voltage/frequency (bsc#1051510).

  - cpufreq: check if policy is inactive early in
    __cpufreq_get() (bsc#1051510).

  - cpufreq: kirkwood: fix possible object reference leak
    (bsc#1051510).

  - cpufreq/pasemi: fix possible object reference leak
    (bsc#1051510).

  - cpufreq: pmac32: fix possible object reference leak
    (bsc#1051510).

  - cpufreq: ppc_cbe: fix possible object reference leak
    (bsc#1051510).

  - cpufreq: Use struct kobj_attribute instead of struct
    global_attr (bsc#1051510).

  - crypto: arm64/sha1-ce - correct digest for empty data in
    finup (bsc#1051510).

  - crypto: arm64/sha2-ce - correct digest for empty data in
    finup (bsc#1051510).

  - crypto: ccp - Fix 3DES complaint from ccp-crypto module
    (bsc#1051510).

  - crypto: ccp - fix AES CFB error exposed by new test
    vectors (bsc#1051510).

  - crypto: ccp - Fix SEV_VERSION_GREATER_OR_EQUAL
    (bsc#1051510).

  - crypto: ccp/gcm - use const time tag comparison
    (bsc#1051510).

  - crypto: ccp - memset structure fields to zero before
    reuse (bsc#1051510).

  - crypto: ccp - Validate the the error value used to index
    error messages (bsc#1051510).

  - crypto: chacha20poly1305 - fix atomic sleep when using
    async algorithm (bsc#1051510).

  - crypto: crypto4xx - fix a potential double free in
    ppc4xx_trng_probe (bsc#1051510).

  - crypto: ghash - fix unaligned memory access in
    ghash_setkey() (bsc#1051510).

  - crypto: talitos - Align SEC1 accesses to 32 bits
    boundaries (bsc#1051510).

  - crypto: talitos - check data blocksize in ablkcipher
    (bsc#1051510).

  - crypto: talitos - fix CTR alg blocksize (bsc#1051510).

  - crypto: talitos - fix max key size for sha384 and sha512
    (bsc#1051510).

  - crypto: talitos - fix skcipher failure due to wrong
    output IV (bsc#1051510).

  - crypto: talitos - HMAC SNOOP NO AFEU mode requires SW
    icv checking (bsc#1051510).

  - crypto: talitos - properly handle split ICV
    (bsc#1051510).

  - crypto: talitos - reduce max key size for SEC1
    (bsc#1051510).

  - crypto: talitos - rename alternative AEAD algos
    (bsc#1051510).

  - dasd_fba: Display '00000000' for zero page when dumping
    sense (bsc#11123080).

  - dma-buf: balance refcount inbalance (bsc#1051510).

  - dma-buf: Discard old fence_excl on retrying
    get_fences_rcu for realloc (bsc#1111666).

  - dma-direct: add support for allocation from ZONE_DMA and
    ZONE_DMA32 (jsc#SLE-6197 bsc#1140559 LTC#173150).

  - dma-direct: do not retry allocation for no-op GFP_DMA
    (jsc#SLE-6197 bsc#1140559 LTC#173150).

  - dma-direct: retry allocations using GFP_DMA for small
    masks (jsc#SLE-6197 bsc#1140559 LTC#173150).

  - dmaengine: hsu: Revert 'set HSU_CH_MTSR to memory width'
    (bsc#1051510).

  - dma-mapping: move dma_mark_clean to dma-direct.h
    (jsc#SLE-6197 bsc#1140559 LTC#173150).

  - dma-mapping: move swiotlb arch helpers to a new header
    (jsc#SLE-6197 bsc#1140559 LTC#173150).

  - dma-mapping: take dma_pfn_offset into account in
    dma_max_pfn (jsc#SLE-6197 bsc#1140559 LTC#173150).

  - Documentation: Add nospectre_v1 parameter (bsc#1051510).

  - Documentation/networking: fix default_ttl typo in
    mpls-sysctl (bsc#1051510).

  - dpaa_eth: fix SG frame cleanup
    (networking-stable-19_05_14).

  - driver core: Fix use-after-free and double free on glue
    directory (bsc#1131281).

  - drm/amd/display: Always allocate initial connector state
    state (bsc#1111666).

  - drm/amd/display: Disable ABM before destroy ABM struct
    (bsc#1111666).

  - drm/amd/display: Fill prescale_params->scale for RGB565
    (bsc#1111666).

  - drm/amd/display: fix compilation error (bsc#1111666).

  - drm/amd/display: Make some functions static
    (bsc#1111666).

  - drm/amdgpu/sriov: Need to initialize the
    HDP_NONSURFACE_BAStE (bsc#1111666).

  - drm/amdkfd: Fix a potential memory leak (bsc#1111666).

  - drm/amdkfd: Fix sdma queue map issue (bsc#1111666).

  - drm/atmel-hlcdc: revert shift by 8 (bsc#1111666).

  - drm/bridge: sii902x: pixel clock unit is 10kHz instead
    of 1kHz (bsc#1051510).

  - drm/bridge: tc358767: read display_props in get_modes()
    (bsc#1051510).

  - drm/crc-debugfs: User irqsafe spinlock in
    drm_crtc_add_crc_entry (bsc#1051510).

  - drm/i915/cml: Introduce Comet Lake PCH (jsc#SLE-6681).

  - drm/i915/icl: Add WaDisableBankHangMode (bsc#1111666).

  - drm/meson: Add support for XBGR8888 & ABGR8888 formats
    (bsc#1051510).

  - drm/msm/a3xx: remove TPL1 regs from snapshot
    (bsc#1051510).

  - drm/msm: Depopulate platform on probe failure
    (bsc#1051510).

  - drm/msm/mdp5: Fix mdp5_cfg_init error return
    (bsc#1111666).

  - drm/nouveau/i2c: Enable i2c pads & busses during preinit
    (bsc#1051510).

  - drm/panel: simple: Fix panel_simple_dsi_probe
    (bsc#1051510).

  - drm: return -EFAULT if copy_to_user() fails
    (bsc#1111666).

  - drm/rockchip: Properly adjust to a true clock in
    adjusted_mode (bsc#1051510).

  - drm/udl: introduce a macro to convert dev to udl
    (bsc#1111666).

  - drm/udl: move to embedding drm device inside udl device
    (bsc#1111666).

  - drm/udl: Replace drm_dev_unref with drm_dev_put
    (bsc#1111666).

  - drm/vc4: fix fb references in async update
    (bsc#1141312).

  - drm/virtio: Add memory barriers for capset cache
    (bsc#1051510).

  - drm/vmwgfx: Honor the sg list segment size limitation
    (bsc#1111666).

  - e1000e: start network tx queue only when link is up
    (bsc#1051510).

  - eCryptfs: fix a couple type promotion bugs
    (bsc#1051510).

  - EDAC: Fix global-out-of-bounds write when setting
    edac_mc_poll_msec (bsc#1114279).

  - efi/bgrt: Drop BGRT status field reserved bits check
    (bsc#1051510).

  - Enable intel-speed-select driver and update
    supported.conf (jsc#SLE-5364)

  - ethtool: check the return value of get_regs_len
    (git-fixes).

  - ethtool: fix potential userspace buffer overflow
    (networking-stable-19_06_09).

  - firmware: ti_sci: Always request response from firmware
    (bsc#1051510).

  - Fix kABI for asus-wmi quirk_entry field addition
    (bsc#1051510).

  - Fix memory leak in sctp_process_init
    (networking-stable-19_06_09).

  - floppy: fix invalid pointer dereference in drive_name
    (bsc#1111666).

  - floppy: fix out-of-bounds read in next_valid_format
    (bsc#1111666).

  - fork, memcg: fix cached_stacks case (bsc#1134097).

  - fork, memcg: fix crash in free_thread_stack on memcg
    charge fail (bsc#1134097).

  - fpga: add intel stratix10 soc fpga manager driver
    (jsc#SLE-7057).

  - fpga: stratix10-soc: fix use-after-free on s10_init()
    (jsc#SLE-7057).

  - fpga: stratix10-soc: fix wrong of_node_put() in init
    function (jsc#jsc#SLE-7057).

  - gpio: omap: ensure irq is enabled before wakeup
    (bsc#1051510).

  - gpu: ipu-v3: ipu-ic: Fix saturation bit offset in TPMEM
    (bsc#1111666).

  - HID: wacom: correct touch resolution x/y typo
    (bsc#1051510).

  - HID: wacom: generic: Correct pad syncing (bsc#1051510).

  - HID: wacom: generic: only switch the mode on devices
    with LEDs (bsc#1051510).

  - HID: wacom: generic: read HID_DG_CONTACTMAX from any
    feature report (bsc#1051510).

  - hpet: Fix division by zero in hpet_time_div()
    (bsc#1051510).

  - hv_netvsc-Set-probe-mode-to-sync.patch: (bsc#1142083).

  - hwmon: (nct6775) Fix register address and added missed
    tolerance for nct6106 (bsc#1051510).

  - IB/ipoib: Add child to parent list only if device
    initialized (bsc#1103992).

  - IB/mlx5: Fixed reporting counters on 2nd port for Dual
    port RoCE (bsc#1103991).

  - idr: fix overflow case for idr_for_each_entry_ul()
    (bsc#1109837).

  - iio: iio-utils: Fix possible incorrect mask calculation
    (bsc#1051510).

  - Input: alps - do not handle ALPS cs19 trackpoint-only
    device (bsc#1051510).

  - Input: alps - fix a mismatch between a condition check
    and its comment (bsc#1051510).

  - Input: elantech - enable middle button support on 2
    ThinkPads (bsc#1051510).

  - Input: imx_keypad - make sure keyboard can always wake
    up system (bsc#1051510).

  - Input: psmouse - fix build error of multiple definition
    (bsc#1051510).

  - Input: synaptics - enable SMBUS on T480 thinkpad
    trackpad (bsc#1051510).

  - Input: synaptics - whitelist Lenovo T580 SMBus
    intertouch (bsc#1051510).

  - Input: tm2-touchkey - acknowledge that setting
    brightness is a blocking call (bsc#1129770).

  - Input: trackpoint - only expose supported controls for
    Elan, ALPS and NXP (bsc#1051510).

  - intel_th: msu: Fix single mode with disabled IOMMU
    (bsc#1051510).

  - intel_th: pci: Add Ice Lake NNPI support (bsc#1051510).

  - iommu-helper: mark iommu_is_span_boundary as inline
    (jsc#SLE-6197 bsc#1140559 LTC#173150).

  - ipv4: Fix raw socket lookup for local traffic
    (networking-stable-19_05_14).

  - ipv4/igmp: fix another memory leak in
    igmpv3_del_delrec() (networking-stable-19_05_31).

  - ipv4/igmp: fix build error if !CONFIG_IP_MULTICAST
    (networking-stable-19_05_31).

  - ipv4: Use return value of inet_iif() for __raw_v4_lookup
    in the while loop (git-fixes).

  - ipv6: Consider sk_bound_dev_if when binding a raw socket
    to an address (networking-stable-19_05_31).

  - ipv6: fix EFAULT on sendto with icmpv6 and hdrincl
    (networking-stable-19_06_09).

  - ipv6: flowlabel: fl6_sock_lookup() must use
    atomic_inc_not_zero (networking-stable-19_06_18).

  - ipv6: use READ_ONCE() for inet->hdrincl as in ipv4
    (networking-stable-19_06_09).

  - iwlwifi: correct one of the PCI struct names
    (bsc#1111666).

  - iwlwifi: do not WARN when calling
    iwl_get_shared_mem_conf with RF-Kill (bsc#1111666).

  - iwlwifi: fix cfg structs for 22000 with different RF
    modules (bsc#1111666).

  - iwlwifi: fix devices with PCI Device ID 0x34F0 and 11ac
    RF modules (bsc#1111666).

  - iwlwifi: Fix double-free problems in
    iwl_req_fw_callback() (bsc#1111666).

  - iwlwifi: fix RF-Kill interrupt while FW load for gen2
    devices (bsc#1111666).

  - iwlwifi: mvm: Drop large non sta frames (bsc#1111666).

  - iwlwifi: pcie: do not service an interrupt that was
    masked (bsc#1111666).

  - iwlwifi: pcie: fix ALIVE interrupt handling for gen2
    devices w/o MSI-X (bsc#1111666).

  - kABI fix for hda_codec.relaxed_resume flag
    (bsc#1111666).

  - kABI: Fix lost iommu-helper symbols on arm64
    (jsc#SLE-6197 bsc#1140559 LTC#173150).

  - kABI: mask changes made by basic protected
    virtualization support (jsc#SLE-6197 bsc#1140559
    LTC#173150).

  - kABI: mask changes made by swiotlb for protected
    virtualization (jsc#SLE-6197 bsc#1140559 LTC#173150).

  - kABI: mask changes made by use of DMA memory for adapter
    interrupts (jsc#SLE-6197 bsc#1140559 LTC#173150).

  - KABI: remove unused hcall definition (bsc#1140322
    LTC#176270).

  - kbuild: use -flive-patching when CONFIG_LIVEPATCH is
    enabled (bsc#1071995).

  - kernel: jump label transformation performance
    (bsc#1137534 bsc#1137535 &#9;&#9;&#9;LTC#178058
    LTC#178059).

  - kvm: arm64: Fix caching of host MDCR_EL2 value
    (bsc#1133021).

  - kvm: arm/arm64: Close VMID generation race
    (bsc#1133021).

  - kvm: arm/arm64: Convert kvm_host_cpu_state to a static
    per-cpu allocation (bsc#1133021).

  - kvm: arm/arm64: Drop resource size check for GICV window
    (bsc#1133021).

  - kvm: arm/arm64: Fix lost IRQs from emulated physcial
    timer when blocked (bsc#1133021).

  - kvm: arm/arm64: Fix VMID alloc race by reverting to
    lock-less (bsc#1133021).

  - kvm: arm/arm64: Handle CPU_PM_ENTER_FAILED
    (bsc#1133021).

  - kvm: arm/arm64: Reduce verbosity of KVM init log
    (bsc#1133021).

  - kvm: arm/arm64: Set dist->spis to NULL after kfree
    (bsc#1133021).

  - kvm: arm/arm64: Skip updating PMD entry if no change
    (bsc#1133021).

  - kvm: arm/arm64: Skip updating PTE entry if no change
    (bsc#1133021).

  - kvm: arm/arm64: vgic: Add missing irq_lock to
    vgic_mmio_read_pending (bsc#1133021).

  - kvm: arm/arm64: vgic: Fix kvm_device leak in
    vgic_its_destroy (bsc#1133021).

  - kvm: arm/arm64: vgic-its: Fix potential overrun in
    vgic_copy_lpi_list (bsc#1133021).

  - kvm: arm/arm64: vgic-its: Take the srcu lock when
    parsing the memslots (bsc#1133021).

  - kvm: arm/arm64: vgic-its: Take the srcu lock when
    writing to guest memory (bsc#1133021).

  - kvm: arm/arm64: vgic-v3: Tighten synchronization for
    guests using v2 on v3 (bsc#1133021).

  - kvm: Disallow wraparound in kvm_gfn_to_hva_cache_init
    (bsc#1133021).

  - kvm/Eventfd: Avoid crash when assign and deassign
    specific eventfd in parallel (bsc#1133021).

  - kvm: mmu: Fix overflow on kvm mmu page limit calculation
    (bsc#1135335).

  - kvm: mmu: Fix overlap between public and private
    memslots (bsc#1133021).

  - kvm/mmu: kABI fix for *_mmu_pages changes in struct
    kvm_arch (bsc#1135335).

  - kvm: polling: add architecture backend to disable
    polling (bsc#1119222).

  - kvm: Reject device ioctls from processes other than the
    VM's creator (bsc#1133021).

  - kvm: s390: change default halt poll time to 50us
    (bsc#1119222).

  - kvm: s390: enable CONFIG_HAVE_KVM_NO_POLL (bsc#1119222)
    We need to enable CONFIG_HAVE_KVM_NO_POLL for
    bsc#1119222

  - kvm: s390: fix typo in parameter description
    (bsc#1119222).

  - kvm: s390: kABI Workaround for 'lowcore' (bsc#1119222).

  - kvm: s390: provide kvm_arch_no_poll function
    (bsc#1119222).

  - kvm: svm/avic: Do not send AVIC doorbell to self
    (bsc#1140133).

  - kvm: SVM: Fix detection of AMD Errata 1096
    (bsc#1142354).

  - lapb: fixed leak of control-blocks
    (networking-stable-19_06_18).

  - libata: do not request sense data on !ZAC ATA devices
    (bsc#1051510).

  - libata: zpodd: Fix small read overflow in
    zpodd_get_mech_type() (bsc#1051510).

  - lib/bitmap.c: make bitmap_parselist() thread-safe and
    much faster (bsc#1143507).

  - libceph: add osd_req_op_extent_osd_data_bvecs()
    (bsc#1141450).

  - libceph: assign cookies in linger_submit()
    (bsc#1135897).

  - libceph: check reply num_data_items in
    setup_request_data() (bsc#1135897).

  - libceph: do not consume a ref on pagelist in
    ceph_msg_data_add_pagelist() (bsc#1135897).

  - libceph: enable fallback to ceph_msg_new() in
    ceph_msgpool_get() (bsc#1135897).

  - libceph: handle zero-length data items (bsc#1141450).

  - libceph: introduce alloc_watch_request() (bsc#1135897).

  - libceph: introduce BVECS data type (bsc#1141450).

  - libceph: introduce ceph_pagelist_alloc() (bsc#1135897).

  - libceph: preallocate message data items (bsc#1135897).

  - libceph, rbd: add error handling for
    osd_req_op_cls_init() (bsc#1135897).

  - libceph, rbd, ceph: move ceph_osdc_alloc_messages()
    calls (bsc#1135897).

  - libceph, rbd: new bio handling code (aka do not clone
    bios) (bsc#1141450).

  - libceph: use single request data item for cmp/setxattr
    (bsc#1139101).

  - lib: fix stall in __bitmap_parselist() (bsc#1051510).

  - libnvdimm/namespace: Fix label tracking error
    (bsc#1142350).

  - libnvdimm/region: Register badblocks before namespaces
    (bsc#1143209).

  - lib/scatterlist: Fix mapping iterator when sg->offset is
    greater than PAGE_SIZE (bsc#1051510).

  - livepatch: Remove duplicate warning about missing
    reliable stacktrace support (bsc#1071995).

  - livepatch: Use static buffer for debugging messages
    under rq lock (bsc#1071995).

  - llc: fix skb leak in llc_build_and_send_ui_pkt()
    (networking-stable-19_05_31).

  - mac80211: do not start any work during reconfigure flow
    (bsc#1111666).

  - mac80211: fix rate reporting inside
    cfg80211_calculate_bitrate_he() (bsc#1111666).

  - mac80211: free peer keys before vif down in mesh
    (bsc#1111666).

  - mac80211: mesh: fix RCU warning (bsc#1111666).

  - mac80211: only warn once on chanctx_conf being NULL
    (bsc#1111666).

  - macsec: fix checksumming after decryption (bsc#1051510).

  - macsec: fix use-after-free of skb during RX
    (bsc#1051510).

  - macsec: let the administrator set UP state even if
    lowerdev is down (bsc#1051510).

  - macsec: update operstate when lower device changes
    (bsc#1051510).

  - mailbox: handle failed named mailbox channel request
    (bsc#1051510).

  - media: coda: fix last buffer handling in
    V4L2_ENC_CMD_STOP (bsc#1051510).

  - media: coda: fix mpeg2 sequence number handling
    (bsc#1051510).

  - media: coda: increment sequence offset for the last
    returned frame (bsc#1051510).

  - media: coda: Remove unbalanced and unneeded mutex unlock
    (bsc#1051510).

  - media: cpia2_usb: first wake up, then free in disconnect
    (bsc#1135642).

  - media: dvb: usb: fix use after free in
    dvb_usb_device_exit (bsc#1051510).

  - media: hdpvr: fix locking and a missing msleep
    (bsc#1051510).

  - media: marvell-ccic: fix DMA s/g desc number calculation
    (bsc#1051510).

  - media: media_device_enum_links32: clean a reserved field
    (bsc#1051510).

  - media: s5p-mfc: Make additional clocks optional
    (bsc#1051510).

  - media: spi: IR LED: add missing of table registration
    (bsc#1051510).

  - media: staging: media: davinci_vpfe: - Fix for memory
    leak if decoder initialization fails (bsc#1051510).

  - media: v4l2: Test type instead of cfg->type in
    v4l2_ctrl_new_custom() (bsc#1051510).

  - media: vivid: fix incorrect assignment operation when
    setting video mode (bsc#1051510).

  - media: vpss: fix a potential NULL pointer dereference
    (bsc#1051510).

  - media: wl128x: Fix some error handling in
    fm_v4l2_init_video_device() (bsc#1051510).

  - mei: bus: need to unlink client before freeing
    (bsc#1051510).

  - mei: me: add denverton innovation engine device IDs
    (bsc#1051510).

  - mei: me: add gemini lake devices id (bsc#1051510).

  - memory: tegra: Fix integer overflow on tick value
    calculation (bsc#1051510).

  - memstick: Fix error cleanup path of memstick_init
    (bsc#1051510).

  - mfd: intel-lpss: Release IDA resources (bsc#1051510).

  - mips: fix an off-by-one in dma_capable (jsc#SLE-6197
    bsc#1140559 LTC#173150).

  - mlxsw: spectrum_dcb: Configure DSCP map as the last rule
    is removed (bsc#1112374).

  - mmc: sdhci-pci: Try 'cd' for card-detect lookup before
    using NULL (bsc#1051510).

  - mm: migrate: Fix reference check race between
    __find_get_block() and migration (bnc#1137609).

  - mm/nvdimm: add is_ioremap_addr and use that to check
    ioremap address (bsc#1140322 LTC#176270).

  - mm, page_alloc: fix has_unmovable_pages for HugePages
    (bsc#1127034).

  - mm: replace all open encodings for NUMA_NO_NODE
    (bsc#1140322 LTC#176270).

  - mt7601u: do not schedule rx_tasklet when the device has
    been disconnected (bsc#1111666).

  - mt7601u: fix possible memory leak when the device is
    disconnected (bsc#1111666).

  - neigh: fix use-after-free read in pneigh_get_next
    (networking-stable-19_06_18).

  - net/9p: include trans_common.h to fix missing prototype
    warning (bsc#1051510).

  - net/af_iucv: build proper skbs for HiperTransport
    (bsc#1142221 LTC#179332).

  - net/af_iucv: remove GFP_DMA restriction for
    HiperTransport (bsc#1142112 bsc#1142221 LTC#179334
    LTC#179332).

  - net/af_iucv: remove GFP_DMA restriction for
    HiperTransport (bsc#1142221 LTC#179332).

  - net: avoid weird emergency message
    (networking-stable-19_05_21).

  - net: fec: fix the clk mismatch in failed_reset path
    (networking-stable-19_05_31).

  - netfilter: conntrack: fix calculation of next bucket
    number in early_drop (git-fixes).

  - net-gro: fix use-after-free read in napi_gro_frags()
    (networking-stable-19_05_31).

  - net: hns3: Fix inconsistent indenting (bsc#1140676).

  - net: hns: fix ICMP6 neighbor solicitation messages
    discard problem (bsc#1140676).

  - net: hns: fix KASAN: use-after-free in
    hns_nic_net_xmit_hw() (bsc#1140676).

  - net: hns: Fix loopback test failed at copper ports
    (bsc#1140676).

  - net: hns: Fix probabilistic memory overwrite when HNS
    driver initialized (bsc#1140676).

  - net: hns: fix unsigned comparison to less than zero
    (bsc#1140676).

  - net: hns: Fix WARNING when remove HNS driver with SMMU
    enabled (bsc#1140676).

  - net: hns: Use NAPI_POLL_WEIGHT for hns driver
    (bsc#1140676).

  - net/mlx4_core: Change the error print to info print
    (networking-stable-19_05_21).

  - net/mlx4_en: ethtool, Remove unsupported SFP EEPROM high
    pages query (networking-stable-19_06_09).

  - net/mlx5: Allocate root ns memory using kzalloc to match
    kfree (networking-stable-19_05_31).

  - net/mlx5: Avoid double free in fs init error unwinding
    path (networking-stable-19_05_31).

  - net/mlx5e: Rx, Fix checksum calculation for new hardware
    (bsc#1127611).

  - net: mvneta: Fix err code path of probe
    (networking-stable-19_05_31).

  - net: mvpp2: fix bad MVPP2_TXQ_SCHED_TOKEN_CNTR_REG queue
    value (networking-stable-19_05_31).

  - net: openvswitch: do not free vport if
    register_netdevice() is failed
    (networking-stable-19_06_18).

  - net/packet: fix memory leak in packet_set_ring()
    (git-fixes).

  - net: rds: fix memory leak in rds_ib_flush_mr_pool
    (networking-stable-19_06_09).

  - net: remove duplicate fetch in sock_getsockopt
    (networking-stable-19_07_02).

  - net: seeq: fix crash caused by not set dev.parent
    (networking-stable-19_05_14).

  - net: stmmac: fixed new system time seconds value
    calculation (networking-stable-19_07_02).

  - net: stmmac: fix reset gpio free missing
    (networking-stable-19_05_31).

  - net: stmmac: set IC bit when transmitting frames with HW
    timestamp (networking-stable-19_07_02).

  - net/tls: fix socket wmem accounting on fallback with
    netem (bsc#1109837).

  - net/tls: make sure offload also gets the keys wiped
    (bsc#1109837).

  - net: usb: qmi_wwan: add Telit 0x1260 and 0x1261
    compositions (networking-stable-19_05_21).

  - nfc: fix potential illegal memory access (bsc#1051510).

  - nvme: fix memory leak caused by incorrect subsystem free
    (bsc#1143185).

  - nvme: fix possible use-after-free in connect error flow
    (bsc#1139500)

  - nvme: fix possible use-after-free in connect error flow
    (bsc#1139500, bsc#1140426)

  - ocfs2: add first lock wait time in locking_state
    (bsc#1134390).

  - ocfs2: add last unlock times in locking_state
    (bsc#1134390).

  - ocfs2: add locking filter debugfs file (bsc#1134390).

  - p54usb: Fix race between disconnect and firmware loading
    (bsc#1111666).

  - packet: Fix error path in packet_init
    (networking-stable-19_05_14).

  - packet: in recvmsg msg_name return at least sizeof
    sockaddr_ll (git-fixes).

  - PCI/AER: Use cached AER Capability offset (bsc#1142623).

  - PCI: Always allow probing with driver_override
    (bsc#1051510).

  - PCI: hv: Add hv_pci_remove_slots() when we unload the
    driver (bsc#1142701).

  - PCI: hv: Add pci_destroy_slot() in
    pci_devices_present_work(), if necessary (bsc#1142701).

  - PCI: hv: Fix a memory leak in hv_eject_device_work()
    (bsc#1142701).

  - PCI: hv: Fix a use-after-free bug in
    hv_eject_device_work() (bsc#1142701).

  - PCI: hv: Fix panic by calling hv_pci_remove_slots()
    earlier (bsc#1142701).

  - PCI: hv: Fix return value check in hv_pci_assign_slots()
    (bsc#1142701).

  - PCI: hv: Remove unused reason for refcount handler
    (bsc#1142701).

  - PCI: hv: support reporting serial number as slot
    information (bsc#1142701).

  - PCI/P2PDMA: Fix missing check for dma_virt_ops
    (bsc#1111666).

  - PCI / PM: Use SMART_SUSPEND and LEAVE_SUSPENDED flags
    for PCIe ports (bsc#1142623).

  - PCI/portdrv: Add #defines for AER and DPC Interrupt
    Message Number masks (bsc#1142623).

  - PCI/portdrv: Consolidate comments (bsc#1142623).

  - PCI/portdrv: Disable port driver in compat mode
    (bsc#1142623).

  - PCI/portdrv: Remove pcie_portdrv_err_handler.slot_reset
    (bsc#1142623).

  - PCI: portdrv: Restore PCI config state on slot reset
    (bsc#1142623).

  - PCI/portdrv: Support PCIe services on subtractive decode
    bridges (bsc#1142623).

  - PCI/portdrv: Use conventional Device ID table formatting
    (bsc#1142623).

  - PCI: qcom: Ensure that PERST is asserted for at least
    100 ms (bsc#1142635).

  - PCI: Return error if cannot probe VF (bsc#1051510).

  - PCI: xilinx-nwl: Fix Multi MSI data programming
    (bsc#1142635).

  - pinctrl: pistachio: fix leaked of_node references
    (bsc#1051510).

  - pinctrl: rockchip: fix leaked of_node references
    (bsc#1051510).

  - pkey: Indicate old mkvp only if old and current mkvp are
    different (bsc#1137827 LTC#178090).

  - pktgen: do not sleep with the thread lock held
    (git-fixes).

  - platform/x86: asus-nb-wmi: Support ALS on the Zenbook
    UX430UQ (bsc#1051510).

  - platform/x86: asus-wmi: Only Tell EC the OS will handle
    display hotkeys from asus_nb_wmi (bsc#1051510).

  - platform/x86: intel_turbo_max_3: Remove restriction for
    HWP platforms (jsc#SLE-5439).

  - platform/x86: ISST: Add common API to register and
    handle ioctls (jsc#SLE-5364).

  - platform/x86: ISST: Add Intel Speed Select mailbox
    interface via MSRs (jsc#SLE-5364).

  - platform/x86: ISST: Add Intel Speed Select mailbox
    interface via PCI (jsc#SLE-5364).

  - platform/x86: ISST: Add Intel Speed Select mmio
    interface (jsc#SLE-5364).

  - platform/x86: ISST: Add Intel Speed Select PUNIT MSR
    interface (jsc#SLE-5364).

  - platform/x86: ISST: Add IOCTL to Translate Linux logical
    CPU to PUNIT CPU number (jsc#SLE-5364).

  - platform/x86: ISST: Restore state on resume
    (jsc#SLE-5364).

  - platform/x86: ISST: Store per CPU information
    (jsc#SLE-5364).

  - platform/x86: pmc_atom: Add CB4063 Beckhoff Automation
    board to critclk_systems DMI table (bsc#1051510).

  - powerpc/64s: Remove POWER9 DD1 support (bsc#1055117,
    LTC#159753, git-fixes).

  - powerpc/crypto: Use cheaper random numbers for
    crc-vpmsum self-test ().

  - powerpc/kdump: Handle crashkernel memory reservation
    failure (bsc#1143466 LTC#179600).

  - powerpc/mm: Change function prototype (bsc#1055117).

  - powerpc/mm: Consolidate numa_enable check and
    min_common_depth check (bsc#1140322 LTC#176270).

  - powerpc/mm/drconf: Use NUMA_NO_NODE on failures instead
    of node 0 (bsc#1140322 LTC#176270).

  - powerpc/mm: Fix node look up with numa=off boot
    (bsc#1140322 LTC#176270).

  - powerpc/mm/hash/4k: Do not use 64K page size for vmemmap
    with 4K pagesize (bsc#1142685 LTC#179509).

  - powerpc/mm/hugetlb: Update huge_ptep_set_access_flags to
    call __ptep_set_access_flags directly (bsc#1055117).

  - powerpc/mm/nvdimm: Add an informative message if we fail
    to allocate altmap block (bsc#1142685 LTC#179509).

  - powerpc/mm/radix: Change pte relax sequence to handle
    nest MMU hang (bsc#1055117).

  - powerpc/mm/radix: Move function from radix.h to
    pgtable-radix.c (bsc#1055117).

  - powerpc/mm/radix: Use the right page size for vmemmap
    mapping (bsc#1055117 bsc#1142685 LTC#179509).

  - powerpc/nvdimm: Add support for multibyte read/write for
    metadata (bsc#1142685 LTC#179509).

  - powerpc/papr_scm: Force a scm-unbind if initial scm-bind
    fails (bsc#1140322 LTC#176270).

  - powerpc/papr_scm: Update drc_pmem_unbind() to use
    H_SCM_UNBIND_ALL (bsc#1140322 LTC#176270).

  - powerpc/pseries: Fix xive=off command line (bsc#1085030,
    git-fixes).

  - powerpc/pseries/scm: Mark the region volatile if cache
    flush not required (bsc#1142685 LTC#179509).

  - powerpc/pseries: Update SCM hcall op-codes in hvcall.h
    (bsc#1140322 LTC#176270).

  - powerpc/watchpoint: Restore NV GPRs while returning from
    exception (bsc#1140945 bsc#1141401 bsc#1141402
    bsc#1141452 bsc#1141453 bsc#1141454 LTC#178983
    LTC#179191 LTC#179192 LTC#179193 LTC#179194 LTC#179195).

  - ppc: Convert mmu context allocation to new IDA API
    (bsc#1139619 LTC#178538).

  - ppp: deflate: Fix possible crash in deflate_init
    (networking-stable-19_05_21).

  - qed: Fix build error without CONFIG_DEVLINK (bsc#1136460
    jsc#SLE-4691 bsc#1136461 jsc#SLE-4692).

  - qed: Fix -Wmaybe-uninitialized false positive
    (bsc#1136460 jsc#SLE-4691 bsc#1136461 jsc#SLE-4692).

  - qlge: Deduplicate lbq_buf_size (bsc#1106061).

  - qlge: Deduplicate rx buffer queue management
    (bsc#1106061).

  - qlge: Factor out duplicated expression (bsc#1106061).

  - qlge: Fix dma_sync_single calls (bsc#1106061).

  - qlge: Fix irq masking in INTx mode (bsc#1106061).

  - qlge: Refill empty buffer queues from wq (bsc#1106061).

  - qlge: Refill rx buffers up to multiple of 16
    (bsc#1106061).

  - qlge: Remove bq_desc.maplen (bsc#1106061).

  - qlge: Remove irq_cnt (bsc#1106061).

  - qlge: Remove page_chunk.last_flag (bsc#1106061).

  - qlge: Remove qlge_bq.len & size (bsc#1106061).

  - qlge: Remove rx_ring.sbq_buf_size (bsc#1106061).

  - qlge: Remove rx_ring.type (bsc#1106061).

  - qlge: Remove useless dma synchronization calls
    (bsc#1106061).

  - qlge: Remove useless memset (bsc#1106061).

  - qlge: Replace memset with assignment (bsc#1106061).

  - qlge: Update buffer queue prod index despite oom
    (bsc#1106061).

  - rbd: do not (ab)use obj_req->pages for stat requests
    (bsc#1141450).

  - rbd: do not NULL out ->obj_request in
    rbd_img_obj_parent_read_full() (bsc#1141450).

  - rbd: get rid of img_req->copyup_pages (bsc#1141450).

  - rbd: move from raw pages to bvec data descriptors
    (bsc#1141450).

  - rbd: remove bio cloning helpers (bsc#1141450).

  - rbd: start enums at 1 instead of 0 (bsc#1141450).

  - rbd: use kmem_cache_zalloc() in rbd_img_request_create()
    (bsc#1141450).

  - RDMA/odp: Fix missed unlock in non-blocking
    invalidate_start (bsc#1103992).

  - RDMA/srp: Accept again source addresses that do not have
    a port number (bsc#1103992).

  - RDMA/srp: Document srp_parse_in() arguments (bsc#1103992
    ).

  - RDMA/uverbs: check for allocation failure in
    uapi_add_elm() (bsc#1103992).

  - RDS: IB: fix 'passing zero to ERR_PTR()' warning
    (git-fixes).

  - Refresh
    patches.drivers/0001-PCI-pciehp-Unify-controller-and-slo
    t-structs.patch. (bsc#1141558)

  - regmap: fix bulk writes on paged registers
    (bsc#1051510).

  - Revert 'bcache: set CACHE_SET_IO_DISABLE in
    bch_cached_dev_error()' (bsc#1140652).

  - Revert 'bcache: set CACHE_SET_IO_DISABLE in
    bch_cached_dev_error()' (bsc#1140652).

  - Revert 'e1000e: fix cyclic resets at link up with active
    tx' (bsc#1051510).

  - Revert 'livepatch: Remove reliable stacktrace check in
    klp_try_switch_task()' (bsc#1071995).

  - Revert 'serial: 8250: Do not service RX FIFO if
    interrupts are disabled' (bsc#1051510).

  - rtlwifi: rtl8192cu: fix error handle when usb probe
    failed (bsc#1111666).

  - rtnetlink: always put IFLA_LINK for links with a
    link-netnsid (networking-stable-19_05_21).

  - s390: add alignment hints to vector load and store
    (jsc#SLE-6907 LTC#175887).

  - s390/airq: use DMA memory for adapter interrupts
    (jsc#SLE-6197 bsc#1140559 LTC#173150).

  - s390/cio: add basic protected virtualization support
    (jsc#SLE-6197 bsc#1140559 LTC#173150).

  - s390/cio: introduce DMA pools to cio (jsc#SLE-6197
    bsc#1140559 LTC#173150).

  - s390/cpum_cf: add ctr_stcctm() function (jsc#SLE-6904 ).

  - s390/cpum_cf: Add minimal in-kernel interface for
    counter measurements (jsc#SLE-6904).

  - s390/cpum_cf: Add support for CPU-MF SVN 6 (jsc#SLE-6904
    ).

  - s390/cpum_cf_diag: Add support for CPU-MF SVN 6
    (jsc#SLE-6904 ).

  - s390/cpum_cf_diag: Add support for s390 counter facility
    diagnostic trace (jsc#SLE-6904).

  - s390/cpum_cf: introduce kernel_cpumcf_alert() to obtain
    measurement alerts (jsc#SLE-6904).

  - s390/cpum_cf: introduce kernel_cpumcf_avail() function
    (jsc#SLE-6904).

  - s390/cpum_cf: move counter set controls to a new header
    file (jsc#SLE-6904).

  - s390/cpum_cf: prepare for in-kernel counter measurements
    (jsc#SLE-6904).

  - s390/cpum_cf: rename per-CPU counter facility structure
    and variables (jsc#SLE-6904).

  - s390/cpumf: Add extended counter set definitions for
    model 8561 and 8562 (bsc#1142052 LTC#179320).

  - s390/cpu_mf: add store cpu counter multiple instruction
    support (jsc#SLE-6904).

  - s390/cpumf: Fix warning from check_processor_id
    (jsc#SLE-6904 ).

  - s390/cpu_mf: move struct cpu_cf_events and per-CPU
    variable to header file (jsc#SLE-6904).

  - s390/cpu_mf: replace stcctm5() with the stcctm()
    function (jsc#SLE-6904).

  - s390/dma: provide proper ARCH_ZONE_DMA_BITS value
    (jsc#SLE-6197 bsc#1140559 LTC#173150).

  - s390/mm: force swiotlb for protected virtualization
    (jsc#SLE-6197 bsc#1140559 LTC#173150).

  - s390/qdio: handle PENDING state for QEBSM devices
    (bsc#1142117 bsc#1142118 bsc#1142119 LTC#179329
    LTC#179330 LTC#179331).

  - s390/qdio: handle PENDING state for QEBSM devices
    (bsc#1142119 LTC#179331).

  - s390/qeth: be drop monitor friendly (bsc#1142115
    LTC#179337).

  - s390/qeth: be drop monitor friendly (bsc#1142220
    LTC#179335).

  - s390: remove the unused dma_capable helper (jsc#SLE-6197
    bsc#1140559 LTC#173150).

  - s390: report new CPU capabilities (jsc#SLE-6907
    LTC#175887).

  - s390/vtime: steal time exponential moving average
    (bsc#1119222).

  - s390/zcrypt: Fix wrong dispatching for control domain
    CPRBs (bsc#1137811 LTC#178088).

  - scsi: bnx2fc: Fix error handling in probe() (bsc#1136502
    jsc#SLE-4703).

  - scsi: bnx2fc: fix incorrect cast to u64 on shift
    operation (bsc#1136502 jsc#SLE-4703).

  - scsi: bnx2fc: Fix NULL dereference in error handling
    (bsc#1136502 jsc#SLE-4703).

  - scsi: bnx2fc: Remove set but not used variable 'oxid'
    (bsc#1136502 jsc#SLE-4703).

  - scsi: bnx2fc: remove unneeded variable (bsc#1136502
    jsc#SLE-4703).

  - scsi: cxgb4i: add wait_for_completion() (jsc#SLE-4678
    bsc#1136342).

  - SCSI: cxgbi: KABI: fix handle completion etc
    (jsc#SLE-4678 bsc#1136342).

  - scsi: cxgbi: remove redundant __kfree_skb call on skb
    and free cst->atid (jsc#SLE-4678 bsc#1136342).

  - scsi: fc: add FPIN ELS definition
    (bsc#1136217,jsc#SLE-4722).

  - scsi/fc: kABI fixes for new ELS_FPIN definition
    (bsc#1136217,jsc#SLE-4722).

  - scsi: ibmvfc: fix WARN_ON during event pool release
    (bsc#1137458 LTC#178093).

  - scsi: libcxgbi: find cxgbi device by MAC address
    (bsc#1136352 jsc#SLE-4687).

  - scsi: libcxgbi: remove uninitialized variable len
    (bsc#1136352 jsc#SLE-4687).

  - scsi: libcxgbi: update route finding logic (bsc#1136352
    jsc#SLE-4687)

  - scsi: lpfc: Add loopback testing to trunking mode
    (bsc#1136217,jsc#SLE-4722).

  - scsi: lpfc: add support for posting FC events on FPIN
    reception (bsc#1136217,jsc#SLE-4722).

  - scsi: lpfc: Annotate switch/case fall-through
    (bsc#1136217,jsc#SLE-4722).

  - scsi: lpfc: avoid uninitialized variable warning
    (bsc#1136217,jsc#SLE-4722).

  - scsi: lpfc: Cancel queued work for an IO when processing
    a received ABTS (bsc#1136217,jsc#SLE-4722).

  - scsi: lpfc: Change smp_processor_id() into
    raw_smp_processor_id() (bsc#1136217,jsc#SLE-4722).

  - scsi: lpfc: Convert bootstrap mbx polling from msleep to
    udelay (bsc#1136217,jsc#SLE-4722).

  - scsi: lpfc: Coordinate adapter error handling with
    offline handling (bsc#1136217,jsc#SLE-4722).

  - scsi: lpfc: Correct boot bios information to FDMI
    registration (bsc#1136217,jsc#SLE-4722).

  - scsi: lpfc: Correct localport timeout duration error
    (bsc#1136217,jsc#SLE-4722).

  - scsi: lpfc: Correct __lpfc_sli_issue_iocb_s4 lockdep
    check (bsc#1136217,jsc#SLE-4722).

  - scsi: lpfc: Correct nvmet buffer free race condition
    (bsc#1136217,jsc#SLE-4722).

  - scsi: lpfc: Declare local functions static
    (bsc#1136217,jsc#SLE-4722).

  - scsi: lpfc: Enhance 6072 log string
    (bsc#1136217,jsc#SLE-4722).

  - scsi: lpfc: fix 32-bit format string warning
    (bsc#1136217,jsc#SLE-4722).

  - scsi: lpfc: fix a handful of indentation issues
    (bsc#1136217,jsc#SLE-4722).

  - scsi: lpfc: Fix alloc context on oas lun creations
    (bsc#1136217,jsc#SLE-4722).

  - scsi: lpfc: Fix a recently introduced compiler warning
    (bsc#1136217,jsc#SLE-4722).

  - scsi: lpfc: Fix BFS crash with DIX enabled
    (bsc#1136217,jsc#SLE-4722).

  - scsi: lpfc: Fix build error (bsc#1136217,jsc#SLE-4722).

  - scsi: lpfc: fix calls to dma_set_mask_and_coherent()
    (bsc#1136217,jsc#SLE-4722).

  - scsi: lpfc: Fix deadlock due to nested hbalock call
    (bsc#1136217,jsc#SLE-4722).

  - scsi: lpfc: Fix driver crash in target reset handler
    (bsc#1136217,jsc#SLE-4722).

  - scsi: lpfc: Fix duplicate log message numbers
    (bsc#1136217,jsc#SLE-4722).

  - scsi: lpfc: Fix error code if kcalloc() fails
    (bsc#1136217,jsc#SLE-4722).

  - scsi: lpfc: Fix error codes in lpfc_sli4_pci_mem_setup()
    (bsc#1136217,jsc#SLE-4722).

  - scsi: lpfc: Fix fc4type information for FDMI
    (bsc#1136217,jsc#SLE-4722).

  - scsi: lpfc: Fix fcp_rsp_len checking on lun reset
    (bsc#1136217,jsc#SLE-4722).

  - scsi: lpfc: Fix FDMI fc4type for nvme support
    (bsc#1136217,jsc#SLE-4722).

  - scsi: lpfc: Fix FDMI manufacturer attribute value
    (bsc#1136217,jsc#SLE-4722).

  - scsi: lpfc: Fix handling of trunk links state reporting
    (bsc#1136217,jsc#SLE-4722).

  - scsi: lpfc: Fix hardlockup in scsi_cmd_iocb_cmpl
    (bsc#1136217,jsc#SLE-4722).

  - scsi: lpfc: Fix HDMI2 registration string for symbolic
    name (bsc#1136217,jsc#SLE-4722).

  - scsi: lpfc: Fix incorrect logical link speed on trunks
    when links down (bsc#1136217,jsc#SLE-4722).

  - scsi: lpfc: Fix indentation and balance braces
    (bsc#1136217,jsc#SLE-4722).

  - scsi: lpfc: Fix io lost on host resets
    (bsc#1136217,jsc#SLE-4722).

  - scsi: lpfc: Fix kernel warnings related to
    smp_processor_id() (bsc#1136217,jsc#SLE-4722).

  - scsi: lpfc: Fix link speed reporting for 4-link trunk
    (bsc#1136217,jsc#SLE-4722).

  - scsi: lpfc: Fix location of SCSI ktime counters
    (bsc#1136217,jsc#SLE-4722).

  - scsi: lpfc: Fix lpfc_nvmet_mrq attribute handling when 0
    (bsc#1136217,jsc#SLE-4722).

  - scsi: lpfc: Fix mailbox hang on adapter init
    (bsc#1136217,jsc#SLE-4722).

  - scsi: lpfc: Fix memory leak in abnormal exit path from
    lpfc_eq_create (bsc#1136217,jsc#SLE-4722).

  - scsi: lpfc: Fix missing wakeups on abort threads
    (bsc#1136217,jsc#SLE-4722).

  - scsi: lpfc: Fix nvmet async receive buffer replenishment
    (bsc#1136217,jsc#SLE-4722).

  - scsi: lpfc: Fix nvmet handling of first burst cmd
    (bsc#1136217,jsc#SLE-4722).

  - scsi: lpfc: Fix nvmet handling of received ABTS for
    unmapped frames (bsc#1136217,jsc#SLE-4722).

  - scsi: lpfc: Fix nvmet target abort cmd matching
    (bsc#1136217,jsc#SLE-4722).

  - scsi: lpfc: Fix oops when driver is loaded with 1
    interrupt vector (bsc#1136217,jsc#SLE-4722).

  - scsi: lpfc: Fix poor use of hardware queues if fewer irq
    vectors (bsc#1136217,jsc#SLE-4722).

  - scsi: lpfc: Fix protocol support on G6 and G7 adapters
    (bsc#1136217,jsc#SLE-4722).

  - scsi: lpfc: Fix PT2PT PLOGI collison stopping discovery
    (bsc#1136217,jsc#SLE-4722).

  - scsi: lpfc: Fix SLI3 commands being issued on SLI4
    devices (bsc#1136217,jsc#SLE-4722).

  - scsi: lpfc: fix unused variable warning
    (bsc#1136217,jsc#SLE-4722).

  - scsi: lpfc: Fixup eq_clr_intr references
    (bsc#1136217,jsc#SLE-4722).

  - scsi: lpfc: Fix use-after-free mailbox cmd completion
    (bsc#1136217,jsc#SLE-4722).

  - scsi: lpfc: Make lpfc_sli4_oas_verify static
    (bsc#1136217,jsc#SLE-4722).

  - scsi: lpfc: Move trunk_errmsg[] from a header file into
    a .c file (bsc#1136217,jsc#SLE-4722).

  - scsi: lpfc: Prevent 'use after free' memory overwrite in
    nvmet LS handling (bsc#1136217,jsc#SLE-4722).

  - scsi: lpfc: Reduce memory footprint for lpfc_queue
    (bsc#1136217,jsc#SLE-4722).

  - scsi: lpfc: Remove set but not used variable 'phys_id'
    (bsc#1136217,jsc#SLE-4722).

  - scsi: lpfc: Remove set-but-not-used variables
    (bsc#1136217,jsc#SLE-4722).

  - scsi: lpfc: Remove unused functions
    (bsc#1136217,jsc#SLE-4722).

  - scsi: lpfc: Resolve inconsistent check of hdwq in
    lpfc_scsi_cmd_iocb_cmpl (bsc#1136217,jsc#SLE-4722).

  - scsi: lpfc: Resolve irq-unsafe lockdep heirarchy warning
    in lpfc_io_free (bsc#1136217,jsc#SLE-4722).

  - scsi: lpfc: resolve static checker warning in
    lpfc_sli4_hba_unset (bsc#1136217,jsc#SLE-4722).

  - scsi: lpfc: Revert message logging on unsupported
    topology (bsc#1136217,jsc#SLE-4722).

  - scsi: lpfc: Revise message when stuck due to
    unresponsive adapter (bsc#1136217,jsc#SLE-4722).

  - scsi: lpfc: Rework misleading nvme not supported in
    firmware message (bsc#1136217,jsc#SLE-4722).

  - scsi: lpfc: Separate CQ processing for nvmet_fc upcalls
    (bsc#1136217,jsc#SLE-4722).

  - scsi: lpfc: Specify node affinity for queue memory
    allocation (bsc#1136217,jsc#SLE-4722).

  - scsi: lpfc: Stop adapter if pci errors detected
    (bsc#1136217,jsc#SLE-4722).

  - scsi: lpfc: Update Copyright in driver version
    (bsc#1136217,jsc#SLE-4722).

  - scsi: lpfc: Update lpfc version to 12.2.0.1
    (bsc#1136217,jsc#SLE-4722).

  - scsi: lpfc: Update lpfc version to 12.2.0.3
    (bsc#1136217,jsc#SLE-4722).

  - scsi: lpfc: use dma_set_mask_and_coherent
    (bsc#1136217,jsc#SLE-4722).

  - scsi: mpt3sas: Determine smp affinity on per HBA basis
    (bsc#1143738).

  - scsi: mpt3sas: Fix msix load balance on and off settings
    (bsc#1143738).

  - scsi: mpt3sas: make driver options visible in sys
    (bsc#1143738).

  - scsi: mpt3sas: Mark expected switch fall-through
    (bsc#1143738).

  - scsi: mpt3sas: Remove CPU arch check to determine
    perf_mode (bsc#1143738).

  - scsi: mpt3sas: Use 63-bit DMA addressing on SAS35 HBA
    (bsc#1143738).

  - scsi: mpt3sas: Use configured PCIe link speed, not max
    (bsc#1143738).

  - scsi: mpt3sas: use DEVICE_ATTR_(RO, RW) (bsc#1143738).

  - scsi: qedf: Add additional checks for io_req->sc_cmd
    validity (bsc#1136467 jsc#SLE-4694).

  - scsi: qedf: Add a flag to help debugging io_req which
    could not be cleaned (bsc#1136467 jsc#SLE-4694).

  - scsi: qedf: Add comment to display logging levels
    (bsc#1136467 jsc#SLE-4694).

  - scsi: qedf: Add driver state to 'driver_stats' debugfs
    node (bsc#1136467 jsc#SLE-4694).

  - scsi: qedf: Add LBA to underrun debug messages
    (bsc#1136467 jsc#SLE-4694).

  - scsi: qedf: Add missing return in qedf_post_io_req() in
    the fcport offload check (bsc#1136467 jsc#SLE-4694).

  - scsi: qedf: Add missing return in qedf_scsi_done()
    (bsc#1136467 jsc#SLE-4694).

  - scsi: qedf: Add port_id for fcport into initiate_cleanup
    debug message (bsc#1136467 jsc#SLE-4694).

  - scsi: qedf: Add return value to log message if
    scsi_add_host fails (bsc#1136467 jsc#SLE-4694).

  - scsi: qedf: Change MSI-X load error message (bsc#1136467
    jsc#SLE-4694).

  - scsi: qedf: Check both the FCF and fabric ID before
    servicing clear virtual link (bsc#1136467 jsc#SLE-4694).

  - scsi: qedf: Check for fcoe_libfc_config failure
    (bsc#1136467 jsc#SLE-4694).

  - scsi: qedf: Check for tm_flags instead of cmd_type
    during cleanup (bsc#1136467 jsc#SLE-4694).

  - scsi: qedf: Check the return value of start_xmit
    (bsc#1136467 jsc#SLE-4694).

  - scsi: qedf: Cleanup rrq_work after QEDF_CMD_OUTSTANDING
    is cleared (bsc#1136467 jsc#SLE-4694).

  - scsi: qedf: Correctly handle refcounting of rdata
    (bsc#1136467 jsc#SLE-4694).

  - scsi: qedf: Do not queue anything if upload is in
    progress (bsc#1136467 jsc#SLE-4694).

  - scsi: qedf: Do not send ABTS for under run scenario
    (bsc#1136467 jsc#SLE-4694).

  - scsi: qedf: fc_rport_priv reference counting fixes
    (bsc#1136467 jsc#SLE-4694).

  - scsi: qedf: Fix lport may be used uninitialized warning
    (bsc#1136467 jsc#SLE-4694).

  - scsi: qedf: Log message if scsi_add_host fails
    (bsc#1136467 jsc#SLE-4694).

  - scsi: qedf: Modify abort and tmf handler to handle edge
    condition and flush (bsc#1136467 jsc#SLE-4694).

  - scsi: qedf: Modify flush routine to handle all I/Os and
    TMF (bsc#1136467 jsc#SLE-4694).

  - scsi: qedf: Print fcport information on wait for upload
    timeout (bsc#1136467 jsc#SLE-4694).

  - scsi: qedf: Print scsi_cmd backpointer in good
    completion path if the command is still being used
    (bsc#1136467 jsc#SLE-4694).

  - scsi: qedf: remove memset/memcpy to nfunc and use func
    instead (bsc#1136467 jsc#SLE-4694).

  - scsi: qedf: Remove set but not used variable 'fr_len'
    (bsc#1136467 jsc#SLE-4694).

  - scsi: qedf: remove set but not used variables
    (bsc#1136467 jsc#SLE-4694).

  - scsi: qedf: Update the driver version to 8.37.25.19
    (bsc#1136467 jsc#SLE-4694).

  - scsi: qedf: Update the driver version to 8.37.25.20
    (bsc#1136467 jsc#SLE-4694).

  - scsi: qedf: Wait for upload and link down processing
    during soft ctx reset (bsc#1136467 jsc#SLE-4694).

  - scsi: qla2xxx: do not crash on uninitialized pool list
    (boo#1138874).

  - scsi: scsi_transport_fc: Add FPIN fc event codes
    (bsc#1136217,jsc#SLE-4722).

  - scsi: scsi_transport_fc: refactor event posting routines
    (bsc#1136217,jsc#SLE-4722).

  - sctp: change to hold sk after auth shkey is created
    successfully (networking-stable-19_07_02).

  - sctp: Free cookie before we memdup a new one
    (networking-stable-19_06_18).

  - sctp: silence warns on sctp_stream_init allocations
    (bsc#1083710).

  - serial: 8250: Fix TX interrupt handling condition
    (bsc#1051510).

  - serial: uartps: Do not add a trailing semicolon to macro
    (bsc#1051510).

  - serial: uartps: Fix long line over 80 chars
    (bsc#1051510).

  - serial: uartps: Fix multiple line dereference
    (bsc#1051510).

  - serial: uartps: Remove useless return from
    cdns_uart_poll_put_char (bsc#1051510).

  - staging: comedi: amplc_pci230: fix NULL pointer deref on
    interrupt (bsc#1051510).

  - staging: comedi: dt282x: fix a NULL pointer deref on
    interrupt (bsc#1051510).

  - staging: rtl8712: reduce stack usage, again
    (bsc#1051510).

  - sunhv: Fix device naming inconsistency between
    sunhv_console and sunhv_reg
    (networking-stable-19_06_18).

  - tcp: fix tcp_set_congestion_control() use from bpf hook
    (bsc#1109837).

  - tcp: reduce tcp_fastretrans_alert() verbosity
    (git-fixes).

  - team: Always enable vlan tx offload (bsc#1051510).

  - tipc: change to use register_pernet_device
    (networking-stable-19_07_02).

  - tools: bpftool: Fix json dump crash on powerpc
    (bsc#1109837).

  - tools: bpftool: use correct argument in cgroup errors
    (bsc#1109837).

  - tools/power/x86: A tool to validate Intel Speed Select
    commands (jsc#SLE-5364).

  - tracing: Fix header include guards in trace event
    headers (bsc#1144474).

  - tty/ldsem, locking/rwsem: Add missing ACQUIRE to
    read_failed sleep loop (bsc#1051510).

  - tty: max310x: Fix invalid baudrate divisors calculator
    (bsc#1051510).

  - tty: rocket: fix incorrect forward declaration of
    'rp_init()' (bsc#1051510).

  - tty: serial_core: Set port active bit in
    uart_port_activate (bsc#1051510).

  - tty: serial: cpm_uart - fix init when SMC is relocated
    (bsc#1051510).

  - tty/serial: digicolor: Fix digicolor-usart already
    registered warning (bsc#1051510).

  - tty: serial: msm_serial: avoid system lockup condition
    (bsc#1051510).

  - tua6100: Avoid build warnings (bsc#1051510).

  - tuntap: synchronize through tfiles array instead of
    tun->numqueues (networking-stable-19_05_14).

  - tun: wake up waitqueues after IFF_UP is set
    (networking-stable-19_07_02).

  - Update
    patches.arch/powerpc-pseries-Fix-xive-off-command-line.p
    atch (bsc#1085030, bsc#1144518, LTC#178833).

  - Update References field to
    patches.suse/0275-bcache-never-writeback-a-discard-opera
    tion.patch (bsc#1130972, bsc#1102247).

  - usb: core: hub: Disable hub-initiated U1/U2
    (bsc#1051510).

  - usb: gadget: ether: Fix race between gether_disconnect
    and rx_submit (bsc#1051510).

  - usb: gadget: fusb300_udc: Fix memory leak of
    fusb300->ep[i] (bsc#1051510).

  - usb: gadget: udc: lpc32xx: allocate descriptor with
    GFP_ATOMIC (bsc#1051510).

  - usb: Handle USB3 remote wakeup for LPM enabled devices
    correctly (bsc#1051510).

  - usb: pci-quirks: Correct AMD PLL quirk detection
    (bsc#1051510).

  - USB: serial: ftdi_sio: add ID for isodebug v1
    (bsc#1051510).

  - USB: serial: option: add support for GosunCn ME3630
    RNDIS mode (bsc#1051510).

  - usb: wusbcore: fix unbalanced get/put cluster_id
    (bsc#1051510).

  - virtio/s390: add indirection to indicators access
    (jsc#SLE-6197 bsc#1140559 LTC#173150).

  - virtio/s390: DMA support for virtio-ccw (jsc#SLE-6197
    bsc#1140559 LTC#173150).

  - virtio/s390: make airq summary indicators DMA
    (jsc#SLE-6197 bsc#1140559 LTC#173150).

  - virtio/s390: use cacheline aligned airq bit vectors
    (jsc#SLE-6197 bsc#1140559 LTC#173150).

  - virtio/s390: use DMA memory for ccw I/O and classic
    notifiers (jsc#SLE-6197 bsc#1140559 LTC#173150).

  - virtio/s390: use vring_create_virtqueue (jsc#SLE-6197
    bsc#1140559 LTC#173150).

  - VMCI: Fix integer overflow in VMCI handle arrays
    (bsc#1051510).

  - vrf: sit mtu should not be updated when vrf netdev is
    the link (networking-stable-19_05_14).

  - vsock/virtio: free packets during the socket release
    (networking-stable-19_05_21).

  - vsock/virtio: set SOCK_DONE on peer shutdown
    (networking-stable-19_06_18).

  - wil6210: drop old event after wmi_call timeout
    (bsc#1111666).

  - wil6210: fix potential out-of-bounds read (bsc#1051510).

  - wil6210: fix spurious interrupts in 3-msi (bsc#1111666).

  - x86, mm: fix fast GUP with hyper-based TLB flushing (VM
    Functionality, bsc#1140903).

  - xdp: fix possible cq entry leak (bsc#1109837).

  - xdp: fix race on generic receive path (bsc#1109837).

  - xdp: hold device for umem regardless of zero-copy mode
    (bsc#1109837).

  - xen: let alloc_xenballooned_pages() fail if not enough
    memory free (bsc#1142450 XSA-300).

  - xfs: do not overflow xattr listent buffer (bsc#1143105).

  - xprtrdma: Fix use-after-free in rpcrdma_post_recvs
    (bsc#1103992 ).

  - xsk: Properly terminate assignment in
    xskq_produce_flush_desc (bsc#1109837)."
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1051510"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1055117"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1071995"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1083647"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1083710"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1085030"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1086103"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1102247"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1103991"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1103992"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1104745"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1106061"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1109837"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1111666"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1112374"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1114279"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1119222"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1123959"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1127034"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1127315"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1127611"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1129770"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1130972"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1131281"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1133021"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1134090"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1134097"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1134390"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1134399"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1135335"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1135642"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1135897"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1136217"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1136342"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1136352"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1136460"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1136461"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1136467"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1136502"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1137458"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1137534"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1137535"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1137584"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1137609"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1137811"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1137827"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1138874"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1139101"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1139358"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1139500"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1139619"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1140133"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1140139"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1140322"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1140426"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1140559"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1140652"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1140676"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1140903"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1140945"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1141312"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1141401"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1141402"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1141450"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1141452"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1141453"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1141454"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1141478"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1141558"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1142023"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1142052"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1142083"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1142112"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1142115"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1142117"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1142118"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1142119"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1142220"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1142221"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1142254"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1142265"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1142350"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1142351"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1142354"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1142359"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1142450"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1142623"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1142635"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1142673"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1142685"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1142701"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1142857"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1142868"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1143003"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1143045"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1143105"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1143185"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1143189"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1143191"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1143209"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1143466"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1143507"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1143738"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1144474"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1144518"
  );
  script_set_attribute(
    attribute:"solution", 
    value:"Update the affected the Linux Kernel packages."
  );
  script_set_cvss_base_vector("CVSS2#AV:L/AC:L/Au:N/C:P/I:P/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:POC/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:P/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:P/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2019-14283");
  script_set_attribute(attribute:"exploitability_ease", value:"Exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"true");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:kernel-debug");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:kernel-debug-base");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:kernel-debug-base-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:kernel-debug-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:kernel-debug-debugsource");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:kernel-debug-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:kernel-debug-devel-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:kernel-default");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:kernel-default-base");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:kernel-default-base-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:kernel-default-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:kernel-default-debugsource");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:kernel-default-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:kernel-default-devel-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:kernel-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:kernel-docs-html");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:kernel-kvmsmall");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:kernel-kvmsmall-base");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:kernel-kvmsmall-base-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:kernel-kvmsmall-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:kernel-kvmsmall-debugsource");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:kernel-kvmsmall-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:kernel-kvmsmall-devel-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:kernel-macros");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:kernel-obs-build");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:kernel-obs-build-debugsource");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:kernel-obs-qa");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:kernel-source");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:kernel-source-vanilla");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:kernel-syms");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:kernel-vanilla");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:kernel-vanilla-base");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:kernel-vanilla-base-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:kernel-vanilla-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:kernel-vanilla-debugsource");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:kernel-vanilla-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:kernel-vanilla-devel-debuginfo");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:novell:opensuse:15.1");

  script_set_attribute(attribute:"vuln_publication_date", value:"2019/05/07");
  script_set_attribute(attribute:"patch_publication_date", value:"2019/08/16");
  script_set_attribute(attribute:"plugin_publication_date", value:"2019/08/20");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"This script is Copyright (C) 2019-2020 and is owned by Tenable, Inc. or an Affiliate thereof.");
  script_family(english:"SuSE Local Security Checks");

  script_dependencies("ssh_get_info.nasl");
  script_require_keys("Host/local_checks_enabled", "Host/SuSE/release", "Host/SuSE/rpm-list", "Host/cpu");

  exit(0);
}


include("audit.inc");
include("global_settings.inc");
include("rpm.inc");

if (!get_kb_item("Host/local_checks_enabled")) audit(AUDIT_LOCAL_CHECKS_NOT_ENABLED);
release = get_kb_item("Host/SuSE/release");
if (isnull(release) || release =~ "^(SLED|SLES)") audit(AUDIT_OS_NOT, "openSUSE");
if (release !~ "^(SUSE15\.1)$") audit(AUDIT_OS_RELEASE_NOT, "openSUSE", "15.1", release);
if (!get_kb_item("Host/SuSE/rpm-list")) audit(AUDIT_PACKAGE_LIST_MISSING);

ourarch = get_kb_item("Host/cpu");
if (!ourarch) audit(AUDIT_UNKNOWN_ARCH);
if (ourarch !~ "^(x86_64)$") audit(AUDIT_ARCH_NOT, "x86_64", ourarch);

flag = 0;

if ( rpm_check(release:"SUSE15.1", reference:"kernel-debug-4.12.14-lp151.28.13.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"kernel-debug-base-4.12.14-lp151.28.13.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"kernel-debug-base-debuginfo-4.12.14-lp151.28.13.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"kernel-debug-debuginfo-4.12.14-lp151.28.13.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"kernel-debug-debugsource-4.12.14-lp151.28.13.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"kernel-debug-devel-4.12.14-lp151.28.13.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"kernel-debug-devel-debuginfo-4.12.14-lp151.28.13.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"kernel-default-4.12.14-lp151.28.13.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"kernel-default-base-4.12.14-lp151.28.13.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"kernel-default-base-debuginfo-4.12.14-lp151.28.13.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"kernel-default-debuginfo-4.12.14-lp151.28.13.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"kernel-default-debugsource-4.12.14-lp151.28.13.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"kernel-default-devel-4.12.14-lp151.28.13.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"kernel-default-devel-debuginfo-4.12.14-lp151.28.13.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"kernel-devel-4.12.14-lp151.28.13.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"kernel-docs-html-4.12.14-lp151.28.13.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"kernel-kvmsmall-4.12.14-lp151.28.13.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"kernel-kvmsmall-base-4.12.14-lp151.28.13.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"kernel-kvmsmall-base-debuginfo-4.12.14-lp151.28.13.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"kernel-kvmsmall-debuginfo-4.12.14-lp151.28.13.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"kernel-kvmsmall-debugsource-4.12.14-lp151.28.13.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"kernel-kvmsmall-devel-4.12.14-lp151.28.13.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"kernel-kvmsmall-devel-debuginfo-4.12.14-lp151.28.13.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"kernel-macros-4.12.14-lp151.28.13.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"kernel-obs-build-4.12.14-lp151.28.13.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"kernel-obs-build-debugsource-4.12.14-lp151.28.13.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"kernel-obs-qa-4.12.14-lp151.28.13.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"kernel-source-4.12.14-lp151.28.13.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"kernel-source-vanilla-4.12.14-lp151.28.13.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"kernel-syms-4.12.14-lp151.28.13.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"kernel-vanilla-4.12.14-lp151.28.13.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"kernel-vanilla-base-4.12.14-lp151.28.13.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"kernel-vanilla-base-debuginfo-4.12.14-lp151.28.13.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"kernel-vanilla-debuginfo-4.12.14-lp151.28.13.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"kernel-vanilla-debugsource-4.12.14-lp151.28.13.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"kernel-vanilla-devel-4.12.14-lp151.28.13.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"kernel-vanilla-devel-debuginfo-4.12.14-lp151.28.13.1") ) flag++;

if (flag)
{
  if (report_verbosity > 0) security_warning(port:0, extra:rpm_report_get());
  else security_warning(0);
  exit(0);
}
else
{
  tested = pkg_tests_get();
  if (tested) audit(AUDIT_PACKAGE_NOT_AFFECTED, tested);
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "kernel-debug / kernel-debug-base / kernel-debug-base-debuginfo / etc");
}
