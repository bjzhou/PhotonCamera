.class public final Ljew;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljew;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/app/admin/DevicePolicyManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljew;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Ljew;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljew;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[C)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljew;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljew;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p1, Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iput-object p1, p0, Ljew;->a:Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "RotaryInputHapticsHelper only supports RecyclerView, ScrollView, HorizontalScrollView & NestedScrollView"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Landroid/view/accessibility/AccessibilityManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljew;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/preference/Preference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljew;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Ljew;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ldhi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljew;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lgxy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljew;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lhil;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljew;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lhkv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljew;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lhlc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Ljew;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lhqr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljew;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lhrz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljew;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Liei;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljew;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ligo;[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljew;->a:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lina;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Ljew;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lj$/util/Optional;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljew;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lkbm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljew;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lmon;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljew;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Ljew;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Loiw;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Ljew;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x9

    new-array p1, p1, [D

    iput-object p1, p0, Ljew;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Ljew;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Ljew;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([C)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Ljew;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([C[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ljew;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([S)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljvk;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p1, v0}, Ljvk;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Ljew;->a:Ljava/lang/Object;

    return-void
.end method

.method public static E(Landroid/content/Context;)Lmqp;
    .locals 2

    new-instance v0, Lodu;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-direct {v0, p0}, Lodu;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-virtual {v0}, Lodu;->b()Ljava/lang/String;

    move-result-object p0

    const-string v1, "measure_app_name"

    invoke-virtual {v0, p0, v1}, Lodu;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmqp;->h(Ljava/lang/Object;)Lmqp;

    move-result-object p0

    return-object p0
.end method

.method public static F(Landroid/content/Context;)Lmqp;
    .locals 2

    new-instance v0, Lodu;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-direct {v0, p0}, Lodu;-><init>(Landroid/content/pm/PackageManager;)V

    const-string p0, "com.google.vr.apps.ornament"

    const-string v1, "app_name"

    invoke-virtual {v0, p0, v1}, Lodu;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmqp;->h(Ljava/lang/Object;)Lmqp;

    move-result-object p0

    return-object p0
.end method

.method public static final H(Lodu;)Z
    .locals 5

    const-string v0, "com.google.vr.apps.ornament"

    const-string v1, "ar_service_desc"

    invoke-virtual {p0, v0, v1}, Lodu;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    sget-object p0, Lodu;->a:Ljava/lang/String;

    const-string v0, "Ornament\'s AR service descriptor not valid"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    aget-object v3, v0, v1

    const/4 v4, 0x1

    aget-object v0, v0, v4

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lodu;->b:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, v2, v1}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_2

    return v4

    :cond_2
    :goto_0
    return v1
.end method

.method public static final I(Landroid/content/Context;)Z
    .locals 2

    new-instance v0, Lodu;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-direct {v0, p0}, Lodu;-><init>(Landroid/content/pm/PackageManager;)V

    const-string p0, "com.google.vr.apps.ornament"

    const-string v1, "com.google.vr.apps.ornament.funshot.activity.FunshotActivity"

    invoke-virtual {v0, p0, v1}, Lodu;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static final R(Lef;)Leg;
    .locals 1

    invoke-virtual {p0}, Lef;->b()Leg;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Leg;->setCancelable(Z)V

    invoke-virtual {p0, v0}, Leg;->setCanceledOnTouchOutside(Z)V

    return-object p0
.end method

.method public static final a(Landroid/view/MotionEvent;)I
    .locals 1

    const/16 v0, 0x1a

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result p0

    neg-float p0, p0

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method private final al()I
    .locals 3

    iget-object v0, p0, Ljew;->a:Ljava/lang/Object;

    instance-of v1, v0, Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->n:Lly;

    if-nez v0, :cond_0

    return v2

    :cond_0
    invoke-virtual {v0}, Lly;->W()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x3

    return v0

    :cond_1
    invoke-virtual {v0}, Lly;->V()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    return v0

    :cond_2
    return v2
.end method

.method private final am(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lef;
    .locals 7

    new-instance v0, Lmgv;

    iget-object v1, p0, Ljew;->a:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    const v2, 0x7f1503e3

    invoke-direct {v0, v1, v2}, Lmgv;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, p1}, Lmgv;->t(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p2}, Lmgv;->m(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Ljew;->a:Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f140592

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcdc;

    const/16 v3, 0xe

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p2

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcdc;-><init>(Ljew;I[B[B[B)V

    invoke-virtual {v0, p1, p2}, Lmgv;->r(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object p1, p0, Ljew;->a:Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f14014b

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p3}, Lmgv;->o(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-object v0
.end method

.method private static an(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "tooltip_impression_count_for_"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static ao(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "tooltip_impression_trigger_count_for_"

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static o(Landroid/view/View;)Ljew;
    .locals 2

    new-instance v0, Linc;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Linc;-><init>(Landroid/view/View;I)V

    invoke-static {v0}, Ljew;->p(Lina;)Ljew;

    move-result-object p0

    return-object p0
.end method

.method public static p(Lina;)Ljew;
    .locals 1

    new-instance v0, Ljew;

    invoke-direct {v0, p0}, Ljew;-><init>(Lina;)V

    return-object v0
.end method

.method public static q(Ljew;Ljew;Ljew;)V
    .locals 69

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iget-object v1, v1, Ljew;->a:Ljava/lang/Object;

    check-cast v1, [D

    const/4 v2, 0x0

    aget-wide v3, v1, v2

    move-object/from16 v5, p1

    iget-object v5, v5, Ljew;->a:Ljava/lang/Object;

    check-cast v5, [D

    aget-wide v6, v5, v2

    mul-double v8, v3, v6

    const/4 v2, 0x1

    aget-wide v10, v1, v2

    const/4 v12, 0x3

    aget-wide v13, v5, v12

    mul-double v15, v10, v13

    const/16 v17, 0x2

    aget-wide v18, v1, v17

    const/16 v20, 0x6

    aget-wide v21, v5, v20

    mul-double v23, v18, v21

    aget-wide v25, v5, v2

    mul-double v27, v3, v25

    const/4 v2, 0x4

    aget-wide v29, v5, v2

    mul-double v31, v10, v29

    const/16 v33, 0x7

    aget-wide v34, v5, v33

    mul-double v36, v18, v34

    aget-wide v38, v5, v17

    mul-double v3, v3, v38

    const/16 v17, 0x5

    aget-wide v40, v5, v17

    mul-double v10, v10, v40

    const/16 v42, 0x8

    aget-wide v43, v5, v42

    mul-double v18, v18, v43

    aget-wide v45, v1, v12

    mul-double v47, v45, v6

    aget-wide v49, v1, v2

    mul-double v51, v49, v13

    aget-wide v53, v1, v17

    mul-double v55, v53, v21

    mul-double v57, v45, v25

    mul-double v59, v49, v29

    mul-double v61, v53, v34

    mul-double v45, v45, v38

    mul-double v49, v49, v40

    mul-double v53, v53, v43

    aget-wide v63, v1, v20

    mul-double v65, v63, v6

    aget-wide v5, v1, v33

    mul-double v13, v13, v5

    aget-wide v67, v1, v42

    mul-double v21, v21, v67

    mul-double v25, v25, v63

    mul-double v29, v29, v5

    mul-double v34, v34, v67

    mul-double v63, v63, v38

    mul-double v38, v5, v40

    mul-double v67, v67, v43

    add-double v57, v57, v59

    add-double v47, v47, v51

    add-double v5, v3, v10

    add-double v27, v27, v31

    add-double/2addr v8, v15

    add-double v1, v8, v23

    add-double v3, v27, v36

    add-double v5, v5, v18

    add-double v7, v47, v55

    add-double v9, v57, v61

    add-double v63, v63, v38

    add-double v25, v25, v29

    add-double v65, v65, v13

    add-double v45, v45, v49

    add-double v11, v45, v53

    add-double v13, v65, v21

    add-double v15, v25, v34

    add-double v17, v63, v67

    invoke-virtual/range {v0 .. v18}, Ljew;->i(DDDDDDDDD)V

    return-void
.end method

.method public static r(Ljew;Limm;Limm;)V
    .locals 23

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    iget-object v1, v1, Ljew;->a:Ljava/lang/Object;

    check-cast v1, [D

    const/4 v3, 0x0

    aget-wide v3, v1, v3

    iget-wide v5, v0, Limm;->a:D

    mul-double v3, v3, v5

    const/4 v7, 0x1

    aget-wide v7, v1, v7

    iget-wide v9, v0, Limm;->b:D

    mul-double v7, v7, v9

    const/4 v11, 0x2

    aget-wide v11, v1, v11

    iget-wide v13, v0, Limm;->c:D

    mul-double v11, v11, v13

    const/4 v0, 0x3

    aget-wide v15, v1, v0

    mul-double v15, v15, v5

    const/4 v0, 0x4

    aget-wide v17, v1, v0

    mul-double v17, v17, v9

    const/4 v0, 0x5

    aget-wide v19, v1, v0

    mul-double v19, v19, v13

    const/4 v0, 0x6

    aget-wide v21, v1, v0

    mul-double v21, v21, v5

    const/4 v0, 0x7

    aget-wide v5, v1, v0

    mul-double v5, v5, v9

    const/16 v0, 0x8

    aget-wide v0, v1, v0

    mul-double v0, v0, v13

    add-double/2addr v3, v7

    add-double/2addr v3, v11

    iput-wide v3, v2, Limm;->a:D

    add-double v15, v15, v17

    add-double v3, v15, v19

    iput-wide v3, v2, Limm;->b:D

    add-double v21, v21, v5

    add-double v0, v21, v0

    iput-wide v0, v2, Limm;->c:D

    return-void
.end method


# virtual methods
.method public final A()V
    .locals 2

    iget-object v0, p0, Ljew;->a:Ljava/lang/Object;

    sget-object v1, Lfah;->o:Lfah;

    check-cast v0, Lj$/util/Optional;

    invoke-virtual {v0, v1}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final B()V
    .locals 2

    iget-object v0, p0, Ljew;->a:Ljava/lang/Object;

    check-cast v0, Liei;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Liei;->b(Z)V

    return-void
.end method

.method public final C()V
    .locals 2

    iget-object v0, p0, Ljew;->a:Ljava/lang/Object;

    check-cast v0, Liei;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Liei;->b(Z)V

    return-void
.end method

.method public final D(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Ljew;->a:Ljava/lang/Object;

    check-cast v0, Liei;

    iget-object v0, v0, Liei;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Ljew;->a:Ljava/lang/Object;

    check-cast p1, Liei;

    iget-object p1, p1, Liei;->b:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final G(Landroid/content/Context;)Z
    .locals 3

    iget-object v0, p0, Ljew;->a:Ljava/lang/Object;

    sget-object v1, Ldht;->p:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Lodu;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-direct {v0, p1}, Lodu;-><init>(Landroid/content/pm/PackageManager;)V

    const-string p1, "com.google.vr.apps.ornament"

    const-string v2, "com.google.vr.apps.ornament.app.MainActivity"

    invoke-virtual {v0, p1, v2}, Lodu;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-static {}, Lkog;->a()Lkog;

    move-result-object p1

    invoke-virtual {p1}, Lkog;->c()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Lkog;->d()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Lkog;->isPixel2018()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Lkog;->f()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Lkog;->g()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    invoke-static {v0}, Ljew;->H(Lodu;)Z

    move-result p1

    return p1
.end method

.method public final J()Z
    .locals 3

    iget-object v0, p0, Ljew;->a:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "camera_double_twist_to_flip_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final K()Z
    .locals 5

    invoke-virtual {p0}, Ljew;->M()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    iget-object v0, p0, Ljew;->a:Ljava/lang/Object;

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v3}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v1, :cond_1

    const-string v4, "com.google.android.accessibility.accessibilitymenu.AccessibilityMenuService"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    if-eqz v3, :cond_0

    const-string v4, "com.google.android.apps.userpanel"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "com.google"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public final L()Z
    .locals 3

    invoke-virtual {p0}, Ljew;->M()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Ljew;->a:Ljava/lang/Object;

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.android.apps.accessibility.voiceaccess/.JustSpeakService"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.google.android.marvin.talkback/com.android.switchaccess.SwitchAccessService"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final M()Z
    .locals 1

    iget-object v0, p0, Ljew;->a:Ljava/lang/Object;

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    return v0
.end method

.method public final N(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lef;
    .locals 3

    new-instance v0, Lmgv;

    iget-object v1, p0, Ljew;->a:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    const v2, 0x7f1503e3

    invoke-direct {v0, v1, v2}, Lmgv;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, p1}, Lmgv;->t(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p2}, Lmgv;->m(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Ljew;->a:Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f14014e

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p3}, Lmgv;->r(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-object v0
.end method

.method public final O(Landroid/content/DialogInterface$OnClickListener;)Leg;
    .locals 3

    iget-object v0, p0, Ljew;->a:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f140147

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljew;->a:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f140146

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, Ljew;->am(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lef;

    move-result-object p1

    invoke-static {p1}, Ljew;->R(Lef;)Leg;

    move-result-object p1

    return-object p1
.end method

.method public final P(Landroid/content/DialogInterface$OnClickListener;)Leg;
    .locals 3

    iget-object v0, p0, Ljew;->a:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f140147

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljew;->a:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f140146

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, Ljew;->am(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lef;

    move-result-object p1

    invoke-static {p1}, Ljew;->R(Lef;)Leg;

    move-result-object p1

    return-object p1
.end method

.method public final Q(Landroid/content/DialogInterface$OnClickListener;)Leg;
    .locals 3

    iget-object v0, p0, Ljew;->a:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f140594

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljew;->a:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f140146

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, Ljew;->am(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lef;

    move-result-object p1

    invoke-static {p1}, Ljew;->R(Lef;)Leg;

    move-result-object p1

    return-object p1
.end method

.method public final S(J)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "\'IMG\'_yyyyMMdd_HHmmss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {p0, p1, p2, v0}, Ljew;->U(JLjava/text/DateFormat;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final T(J)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "\'PANO\'_yyyyMMdd_HHmmss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {p0, p1, p2, v0}, Ljew;->U(JLjava/text/DateFormat;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final U(JLjava/text/DateFormat;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p3, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Ljew;->a:Ljava/lang/Object;

    const-string p3, ""

    monitor-enter p2

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljew;->a:Ljava/lang/Object;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ljew;->a:Ljava/lang/Object;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object p1, p0, Ljew;->a:Ljava/lang/Object;

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit p2

    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Ljew;->a:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit p2

    :goto_0
    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final V()Z
    .locals 2

    iget-object v0, p0, Ljew;->a:Ljava/lang/Object;

    invoke-interface {v0}, Lhil;->k()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final W(Lhgi;)V
    .locals 1

    invoke-static {}, Ljuh;->a()V

    iget-object v0, p0, Ljew;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final declared-synchronized X(Ljava/lang/String;)I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljew;->a:Ljava/lang/Object;

    invoke-static {p1}, Ljew;->an(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized Y(Ljava/lang/String;)I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljew;->a:Ljava/lang/Object;

    invoke-static {p1}, Ljew;->ao(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized Z(Ljava/lang/String;)I
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Ljew;->an(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljew;->a:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Ljew;->a:Ljava/lang/Object;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v4, "tooltip_latest_impression_timestamp_for_"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized aa(Ljava/lang/String;I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljew;->a:Ljava/lang/Object;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p1}, Ljew;->an(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized ab(Ljava/lang/String;I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljew;->a:Ljava/lang/Object;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p1}, Ljew;->ao(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized ac(Ljava/lang/String;)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Ljew;->Y(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    rem-int/lit8 v1, v1, 0x3

    invoke-virtual {p0, p1, v1}, Ljew;->ab(Ljava/lang/String;I)V

    rem-int/lit8 v0, v0, 0x3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final ad()Z
    .locals 2

    iget-object v0, p0, Ljew;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ae()Z
    .locals 2

    iget-object v0, p0, Ljew;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final af()Z
    .locals 2

    iget-object v0, p0, Ljew;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final varargs ag([I)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x2

    if-ge v1, v3, :cond_2

    aget v3, p1, v1

    iget-object v4, p0, Ljew;->a:Ljava/lang/Object;

    check-cast v4, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    add-int/lit8 v5, v3, -0x1

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    if-ne v4, v5, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    :cond_0
    const/4 v4, 0x1

    :goto_1
    xor-int/2addr v3, v4

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    throw p1

    :cond_2
    iget-object p1, p0, Ljew;->a:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid session state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lmoz;->q(ZLjava/lang/Object;)V

    return-void
.end method

.method public final ah(I)V
    .locals 1

    iget-object v0, p0, Ljew;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public final ai(II)V
    .locals 1

    iget-object v0, p0, Ljew;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result p2

    add-int/lit8 p1, p1, -0x1

    if-ne p2, p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public final aj(Ljew;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Ljew;->a:Ljava/lang/Object;

    iget-object p1, p1, Ljew;->a:Ljava/lang/Object;

    check-cast v0, Lhkv;

    iget-object v0, v0, Lhkv;->b:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final ak(Ljew;Landroid/graphics/Bitmap;I)V
    .locals 3

    iget-object v0, p0, Ljew;->a:Ljava/lang/Object;

    iget-object p1, p1, Ljew;->a:Ljava/lang/Object;

    check-cast v0, Lhkv;

    iget-object v1, v0, Lhkv;->b:Landroid/util/LruCache;

    invoke-virtual {v1}, Landroid/util/LruCache;->size()I

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v1

    const/high16 v2, 0x1400000

    if-le v1, v2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Lkaf;->h(II)Lkaf;

    move-result-object v1

    iget-object v0, v0, Lhkv;->b:Landroid/util/LruCache;

    new-instance v2, Llpu;

    invoke-direct {v2, p2, p3, v1}, Llpu;-><init>(Landroid/graphics/Bitmap;ILkaf;)V

    invoke-virtual {v0, p1, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final b(IIZ)Z
    .locals 4

    invoke-direct {p0}, Ljew;->al()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    iget-object p1, p0, Ljew;->a:Ljava/lang/Object;

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p1

    xor-int/2addr p1, v3

    if-eqz p3, :cond_0

    if-eqz p1, :cond_3

    if-lez p2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, p1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Ljew;->al()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    iget-object p2, p0, Ljew;->a:Ljava/lang/Object;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p2, v3}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result p2

    xor-int/2addr p2, v3

    if-eqz p3, :cond_2

    if-eqz p2, :cond_3

    if-lez p1, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    move v2, p2

    goto :goto_0

    :cond_3
    :goto_0
    return v2
.end method

.method public final c(IIZ)Z
    .locals 5

    invoke-direct {p0}, Ljew;->al()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v1, :cond_2

    iget-object p1, p0, Ljew;->a:Ljava/lang/Object;

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p1

    xor-int/2addr p1, v3

    if-eqz p3, :cond_1

    if-eqz p1, :cond_0

    if-gez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    move v3, p1

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Ljew;->al()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_4

    iget-object p2, p0, Ljew;->a:Ljava/lang/Object;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p2, v2}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result p2

    xor-int/2addr p2, v3

    if-eqz p3, :cond_3

    if-eqz p2, :cond_4

    if-gez p1, :cond_4

    goto :goto_0

    :cond_3
    move v3, p2

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method public final d(Laor;)V
    .locals 2

    iget-object p1, p1, Laor;->a:Landroid/view/View;

    instance-of v0, p1, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast p1, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;

    iget-object v0, p0, Ljew;->a:Ljava/lang/Object;

    check-cast v0, Landroidx/preference/Preference;

    iget-object v0, v0, Landroidx/preference/Preference;->q:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->i(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Ljew;->a:Ljava/lang/Object;

    check-cast v0, Landroidx/preference/Preference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->m()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->j(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Ljew;->a:Ljava/lang/Object;

    check-cast v0, Landroidx/preference/Preference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->s()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->k()V

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->f:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p1, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p1, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->f:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p1, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->f:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setDuplicateParentStateEnabled(Z)V

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->h()V

    iget-object v0, p0, Ljew;->a:Ljava/lang/Object;

    instance-of v1, v0, Landroidx/preference/TwoStatePreference;

    if-eqz v1, :cond_2

    check-cast v0, Landroidx/preference/TwoStatePreference;

    iget-boolean v0, v0, Landroidx/preference/TwoStatePreference;->a:Z

    invoke-virtual {p1, v0}, Livl;->setChecked(Z)V

    :cond_2
    return-void
.end method

.method public final e()Z
    .locals 1

    iget-object v0, p0, Ljew;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljew;->a:Ljava/lang/Object;

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final f(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ljew;->a:Ljava/lang/Object;

    invoke-interface {v0, p1}, Lina;->a(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p1
.end method

.method public final g(II)D
    .locals 1

    iget-object v0, p0, Ljew;->a:Ljava/lang/Object;

    check-cast v0, [D

    mul-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p2

    aget-wide p1, v0, p1

    return-wide p1
.end method

.method public final h(IID)V
    .locals 1

    iget-object v0, p0, Ljew;->a:Ljava/lang/Object;

    check-cast v0, [D

    mul-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p2

    aput-wide p3, v0, p1

    return-void
.end method

.method public final i(DDDDDDDDD)V
    .locals 3

    move-object v0, p0

    iget-object v1, v0, Ljew;->a:Ljava/lang/Object;

    check-cast v1, [D

    const/4 v2, 0x0

    aput-wide p1, v1, v2

    const/4 v2, 0x1

    aput-wide p3, v1, v2

    const/4 v2, 0x2

    aput-wide p5, v1, v2

    const/4 v2, 0x3

    aput-wide p7, v1, v2

    const/4 v2, 0x4

    aput-wide p9, v1, v2

    const/4 v2, 0x5

    aput-wide p11, v1, v2

    const/4 v2, 0x6

    aput-wide p13, v1, v2

    const/4 v2, 0x7

    aput-wide p15, v1, v2

    const/16 v2, 0x8

    aput-wide p17, v1, v2

    return-void
.end method

.method public final j(ILimm;)V
    .locals 4

    iget-object v0, p0, Ljew;->a:Ljava/lang/Object;

    iget-wide v1, p2, Limm;->a:D

    check-cast v0, [D

    aput-wide v1, v0, p1

    add-int/lit8 v1, p1, 0x3

    iget-wide v2, p2, Limm;->b:D

    aput-wide v2, v0, v1

    add-int/lit8 p1, p1, 0x6

    iget-wide v1, p2, Limm;->c:D

    aput-wide v1, v0, p1

    return-void
.end method

.method public final k()V
    .locals 4

    iget-object v0, p0, Ljew;->a:Ljava/lang/Object;

    check-cast v0, [D

    const/4 v1, 0x7

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v1

    const/4 v1, 0x6

    aput-wide v2, v0, v1

    const/4 v1, 0x5

    aput-wide v2, v0, v1

    const/4 v1, 0x3

    aput-wide v2, v0, v1

    const/4 v1, 0x2

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    aput-wide v2, v0, v1

    const/16 v1, 0x8

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    aput-wide v2, v0, v1

    const/4 v1, 0x4

    aput-wide v2, v0, v1

    const/4 v1, 0x0

    aput-wide v2, v0, v1

    return-void
.end method

.method public final l(D)V
    .locals 2

    iget-object v0, p0, Ljew;->a:Ljava/lang/Object;

    check-cast v0, [D

    const/16 v1, 0x8

    aput-wide p1, v0, v1

    const/4 v1, 0x4

    aput-wide p1, v0, v1

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    return-void
.end method

.method public final m()V
    .locals 4

    iget-object v0, p0, Ljew;->a:Ljava/lang/Object;

    check-cast v0, [D

    const/16 v1, 0x8

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v1

    const/4 v1, 0x7

    aput-wide v2, v0, v1

    const/4 v1, 0x6

    aput-wide v2, v0, v1

    const/4 v1, 0x5

    aput-wide v2, v0, v1

    const/4 v1, 0x4

    aput-wide v2, v0, v1

    const/4 v1, 0x3

    aput-wide v2, v0, v1

    const/4 v1, 0x2

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    aput-wide v2, v0, v1

    const/4 v1, 0x0

    aput-wide v2, v0, v1

    return-void
.end method

.method public final n(Lcom/google/android/libraries/camera/exif/ExifInterface;)V
    .locals 2

    iget-object v0, p0, Ljew;->a:Ljava/lang/Object;

    sget-object v1, Ldho;->a:Ldhk;

    invoke-interface {v0}, Ldhi;->e()V

    sget v0, Lcom/google/android/libraries/camera/exif/ExifInterface;->f:I

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/camera/exif/ExifInterface;->p(I)V

    iget-object v0, p0, Ljew;->a:Ljava/lang/Object;

    sget-object v1, Ldho;->az:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, LExifSanitizer;->sanitize(Lcom/google/android/libraries/camera/exif/ExifInterface;)V

    return-void
.end method

.method public final s(Ljew;)V
    .locals 4

    iget-object v0, p0, Ljew;->a:Ljava/lang/Object;

    iget-object p1, p1, Ljew;->a:Ljava/lang/Object;

    check-cast p1, [D

    const/4 v1, 0x0

    aget-wide v2, p1, v1

    check-cast v0, [D

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    aget-wide v2, p1, v1

    aput-wide v2, v0, v1

    const/4 v1, 0x2

    aget-wide v2, p1, v1

    aput-wide v2, v0, v1

    const/4 v1, 0x3

    aget-wide v2, p1, v1

    aput-wide v2, v0, v1

    const/4 v1, 0x4

    aget-wide v2, p1, v1

    aput-wide v2, v0, v1

    const/4 v1, 0x5

    aget-wide v2, p1, v1

    aput-wide v2, v0, v1

    const/4 v1, 0x6

    aget-wide v2, p1, v1

    aput-wide v2, v0, v1

    const/4 v1, 0x7

    aget-wide v2, p1, v1

    aput-wide v2, v0, v1

    const/16 v1, 0x8

    aget-wide v2, p1, v1

    aput-wide v2, v0, v1

    return-void
.end method

.method public final t(Ljew;)V
    .locals 13

    iget-object v0, p0, Ljew;->a:Ljava/lang/Object;

    check-cast v0, [D

    const/4 v1, 0x1

    aget-wide v2, v0, v1

    const/4 v4, 0x2

    aget-wide v5, v0, v4

    const/4 v7, 0x5

    aget-wide v8, v0, v7

    iget-object p1, p1, Ljew;->a:Ljava/lang/Object;

    const/4 v10, 0x0

    aget-wide v11, v0, v10

    check-cast p1, [D

    aput-wide v11, p1, v10

    const/4 v10, 0x3

    aget-wide v11, v0, v10

    aput-wide v11, p1, v1

    const/4 v1, 0x6

    aget-wide v11, v0, v1

    aput-wide v11, p1, v4

    aput-wide v2, p1, v10

    const/4 v2, 0x4

    aget-wide v3, v0, v2

    aput-wide v3, p1, v2

    const/4 v2, 0x7

    aget-wide v3, v0, v2

    aput-wide v3, p1, v7

    aput-wide v5, p1, v1

    aput-wide v8, p1, v2

    const/16 v1, 0x8

    aget-wide v2, v0, v1

    aput-wide v2, p1, v1

    return-void
.end method

.method public final u(Ljew;)V
    .locals 61

    move-object/from16 v0, p0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Ljew;->g(II)D

    move-result-wide v2

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v4}, Ljew;->g(II)D

    move-result-wide v5

    const/4 v7, 0x2

    invoke-virtual {v0, v7, v7}, Ljew;->g(II)D

    move-result-wide v8

    mul-double v5, v5, v8

    invoke-virtual {v0, v7, v4}, Ljew;->g(II)D

    move-result-wide v8

    invoke-virtual {v0, v4, v7}, Ljew;->g(II)D

    move-result-wide v10

    mul-double v8, v8, v10

    sub-double/2addr v5, v8

    mul-double v2, v2, v5

    invoke-virtual {v0, v1, v4}, Ljew;->g(II)D

    move-result-wide v5

    invoke-virtual {v0, v4, v1}, Ljew;->g(II)D

    move-result-wide v8

    invoke-virtual {v0, v7, v7}, Ljew;->g(II)D

    move-result-wide v10

    mul-double v8, v8, v10

    invoke-virtual {v0, v4, v7}, Ljew;->g(II)D

    move-result-wide v10

    invoke-virtual {v0, v7, v1}, Ljew;->g(II)D

    move-result-wide v12

    mul-double v10, v10, v12

    sub-double/2addr v8, v10

    mul-double v5, v5, v8

    invoke-virtual {v0, v1, v7}, Ljew;->g(II)D

    move-result-wide v8

    invoke-virtual {v0, v4, v1}, Ljew;->g(II)D

    move-result-wide v10

    invoke-virtual {v0, v7, v4}, Ljew;->g(II)D

    move-result-wide v12

    mul-double v10, v10, v12

    invoke-virtual {v0, v4, v4}, Ljew;->g(II)D

    move-result-wide v12

    invoke-virtual {v0, v7, v1}, Ljew;->g(II)D

    move-result-wide v14

    mul-double v12, v12, v14

    sub-double/2addr v10, v12

    mul-double v8, v8, v10

    sub-double/2addr v2, v5

    add-double/2addr v2, v8

    const-wide/16 v5, 0x0

    cmpl-double v8, v2, v5

    if-nez v8, :cond_0

    return-void

    :cond_0
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    div-double/2addr v5, v2

    iget-object v2, v0, Ljew;->a:Ljava/lang/Object;

    check-cast v2, [D

    const/4 v3, 0x4

    aget-wide v8, v2, v3

    const/16 v3, 0x8

    aget-wide v10, v2, v3

    mul-double v12, v8, v10

    const/4 v3, 0x7

    aget-wide v14, v2, v3

    const/4 v3, 0x5

    aget-wide v16, v2, v3

    mul-double v18, v14, v16

    aget-wide v3, v2, v4

    mul-double v20, v3, v10

    aget-wide v22, v2, v7

    mul-double v24, v22, v14

    mul-double v26, v3, v16

    mul-double v28, v22, v8

    const/4 v7, 0x3

    aget-wide v30, v2, v7

    mul-double v32, v30, v10

    const/4 v7, 0x6

    aget-wide v34, v2, v7

    mul-double v36, v16, v34

    aget-wide v1, v2, v1

    mul-double v10, v10, v1

    mul-double v38, v22, v34

    mul-double v16, v16, v1

    mul-double v22, v22, v30

    mul-double v40, v30, v14

    mul-double v42, v34, v8

    mul-double v14, v14, v1

    mul-double v34, v34, v3

    mul-double v1, v1, v8

    mul-double v30, v30, v3

    sub-double v40, v40, v42

    sub-double v10, v10, v38

    sub-double v26, v26, v28

    sub-double v12, v12, v18

    mul-double v43, v12, v5

    sub-double v3, v20, v24

    neg-double v3, v3

    mul-double v45, v3, v5

    mul-double v47, v26, v5

    sub-double v3, v32, v36

    neg-double v3, v3

    mul-double v49, v3, v5

    mul-double v51, v10, v5

    sub-double v3, v16, v22

    neg-double v3, v3

    mul-double v53, v3, v5

    mul-double v55, v40, v5

    sub-double v14, v14, v34

    neg-double v3, v14

    mul-double v57, v3, v5

    sub-double v1, v1, v30

    mul-double v59, v1, v5

    move-object/from16 v42, p1

    invoke-virtual/range {v42 .. v60}, Ljew;->i(DDDDDDDDD)V

    return-void
.end method

.method public final v()Z
    .locals 3

    iget-object v0, p0, Ljew;->a:Ljava/lang/Object;

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getActiveAdmins()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ljew;->a:Ljava/lang/Object;

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v2, v1}, Landroid/app/admin/DevicePolicyManager;->isProfileOwnerApp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final w()I
    .locals 1

    iget-object v0, p0, Ljew;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public final x()Lhbq;
    .locals 3

    new-instance v0, Lhbq;

    const/16 v1, 0x11

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, v2}, Lhbq;-><init>(Ljew;I[B[B)V

    return-object v0
.end method

.method public final declared-synchronized y(Lilz;F)F
    .locals 6

    monitor-enter p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    cmpl-float v3, p2, v2

    if-ltz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    :try_start_0
    invoke-static {v3}, Lmoz;->e(Z)V

    iget-object v3, p0, Ljew;->a:Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {v3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Ljew;->a:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v3, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lilz;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget v5, v5, Lilz;->a:F

    mul-float v4, v4, v5

    add-float/2addr v3, v4

    add-float/2addr p2, v5

    goto :goto_1

    :cond_1
    cmpl-float p1, p2, v2

    if-lez p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    const-string p1, "No progress to calculate"

    invoke-static {v0, p1}, Lmoz;->q(ZLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    div-float/2addr v3, p2

    monitor-exit p0

    return v3

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public final z()V
    .locals 2

    iget-object v0, p0, Ljew;->a:Ljava/lang/Object;

    sget-object v1, Lfah;->p:Lfah;

    check-cast v0, Lj$/util/Optional;

    invoke-virtual {v0, v1}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method
