.class Lmfw;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lmfp;


# instance fields
.field final synthetic b:Lmfx;


# direct methods
.method public constructor <init>(Lmfx;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iput-object p1, p0, Lmfw;->b:Lmfx;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 6

    goto/32 :goto_1f

    nop

    nop

    :goto_0
    invoke-virtual {v2, v4, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, v0, Lmfx;->l:Lmfj;

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_4
    iget-object v5, v4, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_5
    iget-object p0, p0, Lmfw;->b:Lmfx;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Lmfx;->w:Lmhz;

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_7
    iget-object v0, v0, Lmfx;->h:Landroid/content/Context;

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_8
    invoke-virtual {v0, v1}, Lmfo;->f(I)V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    :cond_0
    goto/32 :goto_28

    nop

    :goto_a
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v0, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_c
    const/4 v4, 0x1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_e
    iget-object v0, v0, Lmfx;->n:Lmfo;

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

    :goto_f
    iget-object v3, p0, Lmfw;->b:Lmfx;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_10
    iget-object v2, v0, Lmfx;->i:Landroid/content/pm/PackageManager;

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_11
    const/4 v1, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v0, p0, Lmfw;->b:Lmfx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_13
    return-void

    nop

    :goto_14
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v0, p0, Lmfw;->b:Lmfx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v3, v3, Lmfx;->n:Lmfo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_17
    invoke-virtual {p0, v0}, Lmfo;->f(I)V

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p0}, Lmhz;->b()V

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_19
    if-eqz v0, :cond_1

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_1a
    if-eq v0, v4, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    :cond_2
    goto/32 :goto_3c

    nop

    nop

    :goto_1b
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_1c
    iget v5, v4, Lspj;->b:I

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object p0, p0, Lmfx;->h:Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_1f
    const v0, 0xf

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_20
    iget-object v4, v4, Lmfo;->d:Ltkb;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_21
    invoke-virtual {v4}, Ltkb;->o()V

    :goto_22
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_23
    check-cast v4, Lspj;

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_25
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget-object v0, p0, Lmfw;->b:Lmfx;

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

    :goto_27
    invoke-virtual {v0, v1}, Lmfj;->e(Landroid/content/pm/ResolveInfo;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_14

    nop

    :goto_29
    goto/32 :goto_12

    nop

    nop

    :goto_2a
    invoke-static {v5}, Lrrf;->x(Z)V

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_2b
    iget-object p0, p0, Lmfw;->b:Lmfx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_2c
    const/16 v2, 0x14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const/4 v1, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object v4, v4, Lmfx;->n:Lmfo;

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_30
    const/4 v3, 0x0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_31
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_32
    new-instance v1, Lmas;

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_33
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_34
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_35
    return-void

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {v3, v4}, Lmfo;->d(Lmfn;)V

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_38
    iget-object v0, p0, Lmfw;->b:Lmfx;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    iget-object v2, p0, Lmfx;->j:Landroid/content/res/Resources;

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_3a
    iget-boolean v5, v4, Lmfo;->a:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    iget-object v0, p0, Lmfw;->b:Lmfx;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_3c
    iget-object v0, p0, Lmfw;->b:Lmfx;

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_3d
    iput-object v3, v4, Lspj;->h:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_3e
    iget-object v2, v0, Lmfx;->j:Landroid/content/res/Resources;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    if-eq v0, v1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    :cond_3
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_40
    iget-object v0, v0, Lmfx;->l:Lmfj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_41
    invoke-virtual {v0, v1, v3}, Lmfj;->j(Landroid/content/pm/ResolveInfo;Lggk;)I

    move-result v0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_42
    iput v5, v4, Lspj;->b:I

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_43
    const v4, 0x7f140645

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-virtual {v1, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_45
    if-eqz v5, :cond_4

    nop

    nop

    goto/32 :goto_22

    nop

    :cond_4
    goto/32 :goto_21

    nop

    nop

    :goto_46
    iget-object v4, p0, Lmfw;->b:Lmfx;

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_48
    sget-object v5, Lspj;->a:Lspj;

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_49
    iget-object v4, v4, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_4a
    iget-object p0, p0, Lmfx;->n:Lmfo;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {v0, v4}, Lmfo;->f(I)V

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_4c
    iget-object v0, p0, Lmfx;->i:Landroid/content/pm/PackageManager;

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    sget-object v4, Lmfn;->c:Lmfn;

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-virtual {v5}, Ltkg;->C()Z

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_50
    or-int/lit8 v5, v5, 0x20

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_51
    iget-object v0, v0, Lmfx;->m:Landroid/os/Handler;

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_52
    invoke-direct {v1, v0, v2}, Lmas;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_53
    iget-object v1, v0, Lmfx;->r:Landroid/content/pm/ResolveInfo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_54
    iget-object v3, v0, Lmfx;->q:Lggk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_55
    iget-object v0, v0, Lmfx;->n:Lmfo;

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_56
    invoke-static {v1, v0, v2}, Lmgn;->a(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_57
    const v1, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_58
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_59
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_5b
    iget-object p0, p0, Lmfw;->b:Lmfx;

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop
.end method

.method public final b()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lmfw;->b:Lmfx;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object v0, p0, Lmfx;->r:Landroid/content/pm/ResolveInfo;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop
.end method

.method public cY()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    return-void

    nop
.end method

.method public d()V
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_1
    const v0, 0x1c

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x1b

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v1, 0x1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0, v0, v1}, Lmfx;->s(ZZ)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_c

    nop

    nop

    :goto_b
    const/4 v0, 0x0

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

    :goto_c
    iget-object p0, p0, Lmfw;->b:Lmfx;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_a

    nop

    nop
.end method

.method public final synthetic dR()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop
.end method

.method public final synthetic e(Lggk;Z)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop
.end method

.method public final synthetic f(Lggk;Z)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop
.end method

.method public final synthetic g()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop
.end method

.method public final synthetic h()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop
.end method

.method public final synthetic j()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public k()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop
.end method

.method public final synthetic l(Landroid/content/pm/ResolveInfo;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop
.end method

.method public final synthetic m()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop
.end method

.method public n()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, v0, v0}, Lmfx;->s(ZZ)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lmfw;->b:Lmfx;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final synthetic o()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop
.end method

.method public final synthetic p(J)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop
.end method

.method public final synthetic q()Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

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

    :goto_1
    return p0

    nop
.end method
