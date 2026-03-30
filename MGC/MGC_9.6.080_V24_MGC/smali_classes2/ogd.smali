.class public final Logd;
.super Loge;
.source "PG"


# static fields
.field public static final a:Logd;

.field public static final b:I

.field private static final e:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    sput v0, Logd;->b:I

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1
    sget v0, Loge;->c:I

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0}, Logd;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    sput-object v0, Logd;->a:Logd;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_5
    new-instance v0, Ljava/lang/Object;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_6
    sput-object v0, Logd;->e:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_7
    new-instance v0, Logd;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Loge;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Landroid/app/Dialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, v1, p3}, Lcp;->m(Lbo;Ljava/lang/String;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_1
    iput-boolean p0, v1, Lbd;->d:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p2, p0}, Lolx;->ah(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_3
    if-nez v1, :cond_0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_0
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v1, Loga;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_6
    const v0, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {p0, p1}, Lai;-><init>(Lcj;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Lcp;->o()V

    goto/32 :goto_0

    nop

    nop

    :goto_9
    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_a
    new-instance p0, Lai;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v0, 0x0

    nop

    nop

    nop

    :try_start_0
    instance-of v1, p1, Lbr;

    nop
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iput-boolean p0, v1, Lbd;->e:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_14
    return-void

    nop

    :catch_0
    :goto_15
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_16
    if-nez p4, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :cond_1
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_18
    return-void

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iput-object p4, v1, Logt;->aj:Landroid/content/DialogInterface$OnCancelListener;

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p0}, Lcp;->f()V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-lez v0, :cond_2

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_2
    goto/32 :goto_d

    nop

    :goto_1e
    iput-object p2, v1, Logt;->ai:Landroid/app/Dialog;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-direct {v1}, Logt;-><init>()V

    goto/32 :goto_2

    nop

    nop

    :goto_20
    invoke-static {p2, p0}, Lolx;->ah(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_9

    nop

    nop

    :goto_21
    const v1, 0x6

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_22
    iput-object p2, v1, Loga;->a:Landroid/app/Dialog;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_23
    check-cast p1, Lbr;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iput-object p4, v1, Loga;->b:Landroid/content/DialogInterface$OnCancelListener;

    nop

    :goto_25
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_26
    const-string p0, "Cannot display null dialog"

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_27
    if-nez p4, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :cond_3
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_28
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {p1}, Lbr;->dq()Lcj;

    move-result-object p1

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v1, p1, p3}, Loga;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto/32 :goto_18

    nop

    nop

    :goto_2b
    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/32 :goto_22

    nop

    nop

    :goto_2c
    invoke-direct {v1}, Loga;-><init>()V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    new-instance v1, Logt;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b(Landroid/content/Context;ILokh;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;
    .locals 4

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto/32 :goto_1

    nop

    nop

    :goto_1
    if-nez p4, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x104000a

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_6
    const v0, 0x18

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-nez p4, :cond_1

    nop

    goto/32 :goto_40

    nop

    nop

    :cond_1
    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_8
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {p0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    :goto_a
    goto/32 :goto_14

    nop

    nop

    :goto_b
    goto :goto_11

    nop

    :goto_c
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_d
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    goto/32 :goto_27

    nop

    nop

    :goto_e
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_f
    new-instance v0, Landroid/util/TypedValue;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_10
    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0, p4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    :goto_13
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {p1, p2}, Lokc;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_15
    invoke-direct {p2}, Ljava/lang/IllegalArgumentException;-><init>()V

    goto/32 :goto_33

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_17
    const/4 v0, 0x5

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_1a
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :cond_2
    goto/32 :goto_1d

    nop

    :goto_1b
    if-eqz p2, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_22

    nop

    nop

    :goto_1c
    const v0, 0x7f140149

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_1d
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_20
    const/4 v0, 0x3

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_21
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_22
    return-object p0

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_25
    if-nez v0, :cond_4

    nop

    goto/32 :goto_3d

    nop

    nop

    :cond_4
    goto/32 :goto_34

    nop

    nop

    nop

    :goto_26
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_28
    goto/16 :goto_11

    nop

    :goto_29
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :goto_2b
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const v0, 0x7f14013f

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_2d
    new-instance p0, Landroid/app/AlertDialog$Builder;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_2e
    const-string v1, "Theme.Dialog.Alert"

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_2f
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-static {p1, p2}, Lokc;->c(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_31
    const v2, 0x1010309

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    const-string p3, "GoogleApiAvailability"

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_34
    new-instance p0, Landroid/app/AlertDialog$Builder;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_36
    return-object p0

    nop

    :goto_37
    goto/32 :goto_3e

    nop

    nop

    :goto_38
    if-ne p2, v0, :cond_5

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    new-instance p2, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_3a
    if-nez p1, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_3b
    if-ne p2, v3, :cond_7

    nop

    nop

    goto/32 :goto_29

    nop

    :cond_7
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    :goto_3d
    goto/32 :goto_41

    nop

    nop

    :goto_3e
    goto/32 :goto_1e

    nop

    :goto_3f
    invoke-virtual {p0, p4, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :goto_40
    goto/32 :goto_30

    nop

    nop

    nop

    :goto_41
    if-eqz p0, :cond_8

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_42
    const-string p2, "Creating dialog for Google Play services availability issue. ConnectionResult=%s"

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_44
    const v0, 0x7f140142

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_45
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_46
    invoke-static {p3, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/32 :goto_19

    nop

    nop

    :goto_47
    if-ne p2, v0, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_48
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_49
    const v1, 0x1f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4a
    goto/16 :goto_11

    nop

    nop

    :goto_4b
    goto/32 :goto_1c

    nop

    nop

    nop
.end method

.method public final c(Landroid/app/Activity;IILandroid/content/DialogInterface$OnCancelListener;)V
    .locals 2

    goto/32 :goto_e

    nop

    nop

    :goto_0
    const-string v0, "d"

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1
    new-instance v1, Lokf;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    :goto_3
    invoke-virtual {p0, p1, p2, p3, p4}, Logd;->a(Landroid/app/Activity;Landroid/app/Dialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0, p1, p2, v0}, Loge;->g(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    :goto_9
    goto/32 :goto_10

    nop

    nop

    :goto_a
    invoke-direct {v1, v0, p1, p3}, Lokf;-><init>(Landroid/content/Intent;Landroid/app/Activity;I)V

    goto/32 :goto_f

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const-string p3, "GooglePlayServicesErrorDialog"

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x13

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_e
    const v0, 0x17

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_f
    invoke-virtual {p0, p1, p2, v1, p4}, Logd;->b(Landroid/content/Context;ILokh;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-eqz p2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d(Landroid/content/Context;ILandroid/app/PendingIntent;)V
    .locals 9

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v6, p2}, Ldtg;->d(Ljava/lang/CharSequence;)V

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_2
    if-eqz p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_28

    nop

    nop

    :goto_3
    goto/32 :goto_86

    nop

    nop

    nop

    :goto_4
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/16 v1, 0x10

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_60

    nop

    nop

    :goto_8
    goto/16 :goto_20

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_84

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v6, v1}, Ldtg;->e(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :goto_c
    const/4 p2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    new-instance p2, Landroid/app/NotificationChannel;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_e
    invoke-static {p1}, Lolu;->a(Landroid/content/Context;)Z

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v4, 0x7f080191

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    :goto_10
    iget-object p2, v6, Ldtg;->b:Ljava/util/ArrayList;

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_11
    const-string v3, "GoogleApiAvailability"

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v6, v7}, Ldtg;->f(I)V

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v4, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_14
    const v0, 0x7

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_15
    new-instance v6, Ldtg;

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    :goto_16
    move v7, p0

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_6a

    nop

    nop

    :goto_18
    iput-boolean v2, v6, Ldtg;->j:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v5, p2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_1a
    const/4 p3, 0x4

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const-string v2, "GMS core API Availability. ConnectionResult=%s, tag=%s"

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const-string p1, "Missing resolution for ConnectionResult.RESOLUTION_REQUIRED. Call GoogleApiAvailability#showErrorNotification(Context, ConnectionResult) instead."

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->icon:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    :goto_1e
    if-eq p2, p0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    move-object p2, v8

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_21
    const-string p0, "GoogleApiAvailability"

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-static {p0}, Ldtg;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-static {p1}, Lolu;->c(Landroid/content/Context;)Z

    move-result p0

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget-object p2, v6, Ldtg;->n:Landroid/app/Notification;

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const/16 p0, 0x13

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_26
    invoke-static {p1, p2}, Lokc;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    :goto_27
    invoke-static {v3, v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p2, p1}, Landroid/app/NotificationChannel;->setName(Ljava/lang/CharSequence;)V

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_2a
    iget-object v3, v6, Ldtg;->n:Landroid/app/Notification;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    const v7, 0x108008a

    nop

    goto/32 :goto_73

    nop

    nop

    :goto_2c
    const p1, 0x9b6d

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :goto_2d
    iput-object p2, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_2f
    sget-object p0, Logd;->e:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    :goto_30
    invoke-static {v2}, Lolx;->ac(Z)V

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_31
    goto/16 :goto_59

    nop

    :goto_32
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_33
    invoke-static {v5}, Lolx;->ag(Ljava/lang/Object;)V

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_34
    const-string v4, "common_google_play_services_resolution_required_text"

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_35
    new-instance v3, Ldte;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    if-eqz p2, :cond_2

    nop

    nop

    goto/32 :goto_32

    nop

    :cond_2
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_37
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_85

    nop

    :goto_38
    goto/16 :goto_64

    nop

    :goto_39
    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_3a
    if-ne v0, p1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {v6}, Ldtg;->a()Landroid/app/Notification;

    move-result-object p0

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-static {p1, v0}, Lokc;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    :goto_3d
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_3e
    goto/16 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_40
    const-string p0, "com.google.android.gms.availability"

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    const/16 p1, 0x28c4

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_45
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_46
    const/4 p1, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_47
    new-instance p2, Logc;

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_48
    invoke-static {p1, v4, p0}, Lokc;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    :goto_49
    goto/32 :goto_93

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-static {v2}, Lolx;->ac(Z)V

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object p0

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_4c
    if-eq v0, p0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    :cond_5
    goto/32 :goto_97

    nop

    nop

    nop

    :goto_4d
    return-void

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_7d

    nop

    nop

    nop

    :goto_4e
    const v1, 0x18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_4f
    if-eq p2, v0, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    const-string p2, "common_google_play_services_resolution_required_title"

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_51
    goto/16 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_52
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    check-cast v5, Landroid/app/NotificationManager;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_54
    const p0, 0x7f14014e

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_55
    iput v1, v6, Ldtg;->h:I

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    if-nez p0, :cond_7

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_54

    nop

    nop

    nop

    :goto_57
    const/4 v1, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_58
    invoke-virtual {v5, p2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :goto_59
    goto/32 :goto_40

    nop

    nop

    :goto_5a
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    const v3, 0x7f140146

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    const p3, 0x7f140145

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_5d
    invoke-virtual {p2, v2, p0, p1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    const-wide/32 p0, 0x1d4c0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_5f
    add-int v0, v0, v1

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_60
    if-eq p2, p0, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_61
    new-instance p2, Ldtf;

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    invoke-direct {p2, p0, p1, p3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    goto/32 :goto_19

    nop

    nop

    :goto_63
    iput-object p0, v6, Ldtg;->f:Ljava/lang/CharSequence;

    nop

    nop

    nop

    nop

    :goto_64
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    iput-object p3, v6, Ldtg;->g:Landroid/app/PendingIntent;

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_66
    return-void

    nop

    nop

    nop

    nop

    :goto_67
    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_68
    invoke-virtual {p1, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_69
    invoke-virtual {v5, p0}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    invoke-virtual {v6, v7}, Ldtg;->f(I)V

    goto/32 :goto_55

    nop

    nop

    :goto_6b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    nop

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    :goto_6c
    if-ne v0, p0, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    :cond_9
    goto/32 :goto_25

    nop

    nop

    :goto_6d
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_6e
    if-eqz p2, :cond_a

    nop

    goto/32 :goto_8b

    nop

    :cond_a
    goto/32 :goto_91

    nop

    nop

    :goto_6f
    const-string p0, "com.google.android.gms.availability"

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_70
    move-object v8, v0

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    :goto_71
    goto/16 :goto_49

    nop

    nop

    nop

    :goto_72
    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    :goto_73
    if-nez p2, :cond_b

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :cond_b
    goto/32 :goto_30

    nop

    nop

    :goto_74
    iput-object p0, v6, Ldtg;->m:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_75
    invoke-virtual {v6, p2}, Ldtg;->g(Ldth;)V

    goto/32 :goto_e

    nop

    nop

    :goto_76
    sget-object p1, Logr;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_77
    goto/16 :goto_43

    nop

    nop

    nop

    :goto_78
    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_79
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    invoke-direct {v6, p1, v1}, Ldtg;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_7b
    invoke-direct {p2, p0, p1}, Logc;-><init>(Logd;Landroid/content/Context;)V

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    new-instance v7, Landroid/os/Bundle;

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    throw p1

    nop

    nop

    nop

    :goto_7e
    goto/32 :goto_3

    nop

    nop

    :goto_7f
    if-eqz p3, :cond_c

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_c
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_80
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    :goto_81
    invoke-static {v4}, Landroidx/core/graphics/drawable/IconCompat;->b(I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v4

    nop

    goto/32 :goto_7c

    nop

    nop

    :goto_82
    const-string v5, "notification"

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_83
    invoke-static {p0}, Ldtg;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_84
    invoke-static {p1, p2}, Lokc;->c(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_85
    goto/32 :goto_7e

    nop

    :goto_86
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_87
    const/4 p0, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    :goto_88
    invoke-direct {p2}, Ldtf;-><init>()V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_89
    move v0, p0

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_8a
    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    nop

    nop

    nop

    :goto_8b
    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_8c
    monitor-enter p0

    nop

    :try_start_1
    monitor-exit p0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    iput-wide v3, p2, Landroid/app/Notification;->when:J

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    iput-object p3, v6, Ldtg;->g:Landroid/app/PendingIntent;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    iput-object v1, p2, Ldtf;->a:Ljava/lang/CharSequence;

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :goto_90
    if-ne v0, v1, :cond_d

    nop

    goto/32 :goto_78

    nop

    nop

    :cond_d
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_91
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    :goto_92
    invoke-static {p2}, Ldtg;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_93
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_94
    move v0, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_95
    const/16 v0, 0x12

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_96
    new-instance v2, Ljava/lang/IllegalArgumentException;

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_97
    goto/16 :goto_72

    nop

    nop

    nop

    nop

    :goto_98
    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_99
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_9c
    invoke-static {p1}, Lokc;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    if-ne v0, v2, :cond_e

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_90

    nop

    nop

    nop

    nop

    :goto_9e
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_9f
    invoke-direct {v3, v4, p0, p3, v7}, Ldte;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;)V

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    invoke-virtual {v5, p1, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    if-eqz p0, :cond_f

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :cond_f
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop
.end method
