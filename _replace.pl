use strict; use warnings;
local $/;
my $f = <>;
my $new = <<'HTML';
<!-- Center core: secret flip (A.I.R.O.N. logo -> V.A.U.L.T. door) -->
      <div class="airon-coreFlip" id="coreFlip">
        <div class="airon-coreFlip__inner" id="coreFlipInner">
          <!-- FRONT: A.I.R.O.N. core -->
          <button class="airon-tc__core airon-coreFlip__face airon-coreFlip__face--front" id="coreLogoBtn" type="button" aria-label="Reveal V.A.U.L.T.">
            <video class="airon-tc__coreVid" autoplay muted loop playsinline preload="auto" aria-hidden="true">
              <source src="https://assets.dingfelder.co/airon/selector-core.mp4" type="video/mp4" />
            </video>
            <span class="airon-coreFlip__hint" aria-hidden="true">tap logo</span>
          </button>

          <!-- BACK: V.A.U.L.T. door -->
          <button class="airon-tc__core airon-tc__core--vault airon-coreFlip__face airon-coreFlip__face--back" id="vaultDoorBtn" type="button" aria-label="Open V.A.U.L.T.">
            <video class="airon-tc__coreVid" autoplay muted loop playsinline preload="auto" aria-hidden="true">
              <source src="https://assets.dingfelder.co/airon/selector-core-vault.mp4" type="video/mp4" />
            </video>
            <span class="airon-coreFlip__hint" aria-hidden="true">tap vault door</span>
          </button>
        </div>
      </div>

      <!-- Vault Modal -->
HTML

# Replace center button block with flip block
$f =~ s/<!-- Center video \(no ring \/ no badge\) -->\s*<button[^>]*id="vaultBtn"[\s\S]*?<\/button>\s*\n\s*<!-- Vault Modal -->/$new/s;
print $f;
