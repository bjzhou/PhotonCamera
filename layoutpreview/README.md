# layoutpreview

This module exists only to let Android Studio treat
`MGC/MGC_9.6.080_V24_MGC/res` as Android resources.

Usage:

1. Sync Gradle.
2. Open any XML under `MGC/MGC_9.6.080_V24_MGC/res/layout`.
3. Use Android Studio's `Code`, `Split`, or `Design` view.

Notes:

- The module points at the original MGC `res` directory directly.
- Preview works best for layouts that use framework, AppCompat, Material,
  ConstraintLayout, CardView, RecyclerView, ViewPager2, or Lottie views.
- Layouts that reference app-private custom views may still need stub classes
  before the Preview pane can render them.
