.class final Lfg;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public A:Ljava/lang/CharSequence;

.field public B:Ljava/lang/CharSequence;

.field public C:Landroid/content/res/ColorStateList;

.field public D:Landroid/graphics/PorterDuff$Mode;

.field final synthetic E:Lfh;

.field F:Ldvu;

.field public final a:Landroid/view/Menu;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:I

.field public j:I

.field public k:Ljava/lang/CharSequence;

.field public l:Ljava/lang/CharSequence;

.field public m:I

.field public n:C

.field public o:I

.field public p:C

.field public q:I

.field public r:I

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:I

.field public w:I

.field public x:Ljava/lang/String;

.field public y:Ljava/lang/String;

.field public z:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lfh;Landroid/view/Menu;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lfg;->E:Lfh;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p2, p0, Lfg;->a:Landroid/view/Menu;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lfg;->D:Landroid/graphics/PorterDuff$Mode;

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

    :goto_3
    const/4 p1, 0x0

    nop

    nop

    nop

    goto/32 :goto_6

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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    :goto_6
    iput-object p1, p0, Lfg;->C:Landroid/content/res/ColorStateList;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Lfg;->c()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method

.method public static final e(Ljava/lang/String;)C
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    :goto_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    return p0

    nop

    :goto_4
    if-eqz p0, :cond_0

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

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Landroid/view/SubMenu;
    .locals 5

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1
    iget v3, p0, Lfg;->j:I

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_5
    iget v2, p0, Lfg;->i:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_6
    iget-object v4, p0, Lfg;->k:Ljava/lang/CharSequence;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_7
    iget v1, p0, Lfg;->b:I

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

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

    :goto_9
    const/4 v0, 0x1

    nop

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

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_b
    const v1, 0x17

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

    nop

    :goto_c
    invoke-interface {v0}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_d
    const v0, 0xd

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0, v1}, Lfg;->d(Landroid/view/MenuItem;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_4

    nop

    nop

    :goto_10
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_f

    nop

    nop

    :goto_12
    iput-boolean v0, p0, Lfg;->h:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_13
    iget-object v0, p0, Lfg;->a:Landroid/view/Menu;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    :try_start_0
    iget-object p0, p0, Lfg;->E:Lfh;

    nop

    nop

    nop

    nop

    iget-object p0, p0, Lfh;->e:Landroid/content/Context;

    nop

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    nop

    nop

    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    invoke-static {p1, v0, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    nop

    nop

    nop

    const/4 p2, 0x1

    nop

    nop

    invoke-virtual {p0, p2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    invoke-virtual {p0, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_3

    nop

    nop

    :goto_0
    const-string p2, "Cannot instantiate class: "

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    invoke-static {p2, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const-string p2, "SupportMenuInflater"

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    :catch_0
    move-exception p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-object p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c()V
    .locals 1

    goto/32 :goto_7

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2
    iput v0, p0, Lfg;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-boolean v0, p0, Lfg;->g:Z

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    iput v0, p0, Lfg;->e:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_5
    iput v0, p0, Lfg;->b:I

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_6
    iput v0, p0, Lfg;->d:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
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

    :goto_8
    iput-boolean v0, p0, Lfg;->f:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method public final d(Landroid/view/MenuItem;)V
    .locals 6

    goto/32 :goto_83

    nop

    nop

    nop

    :goto_0
    iget v2, p0, Lfg;->q:I

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    :goto_1
    goto/16 :goto_9b

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_3
    check-cast v0, Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {v1, v0}, Ldug;->d(Ldvu;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-nez v1, :cond_0

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-eqz v2, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/16 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-interface {v3, v0, v2}, Ldug;->setAlphabeticShortcut(CI)Landroid/view/MenuItem;

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_b
    move-object v2, p1

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget v0, p0, Lfg;->r:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    :goto_d
    throw p0

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_f
    invoke-interface {p1, p0}, Ldug;->setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    check-cast v0, Lge;

    nop

    :try_start_0
    iget-object v1, v0, Lge;->d:Ljava/lang/reflect/Method;

    nop

    nop

    nop

    if-nez v1, :cond_3

    nop

    iget-object v1, v0, Lge;->c:Ldug;

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Ldug;->getClass()Ljava/lang/Class;

    move-result-object v1

    nop

    nop

    nop

    const-string v4, "setExclusiveCheckable"

    nop

    nop

    nop

    nop

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    nop

    filled-new-array {v5}, [Ljava/lang/Class;

    move-result-object v5

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    nop

    nop

    nop

    nop

    iput-object v1, v0, Lge;->d:Ljava/lang/reflect/Method;

    nop

    :cond_3
    iget-object v1, v0, Lge;->d:Ljava/lang/reflect/Method;

    nop

    nop

    nop

    nop

    iget-object v0, v0, Lge;->c:Ldug;

    nop

    nop

    nop

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    nop

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    invoke-virtual {v1, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_7f

    nop

    nop

    :goto_11
    invoke-virtual {v0, v3}, Lfz;->j(Z)V

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_12
    instance-of v0, p1, Lfz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_13
    const-string v0, "SupportMenuInflater"

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_14
    invoke-direct {v1, v0, v4}, Lff;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-interface {v2, v0}, Ldug;->setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_17
    if-gtz v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_7

    nop

    nop

    :goto_18
    instance-of v1, p1, Ldug;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_19
    iget-object v0, p0, Lfg;->E:Lfh;

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_1a
    check-cast v3, Ldug;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1b
    check-cast v0, Lfz;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_1d
    iget-char v0, p0, Lfg;->n:C

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :goto_20
    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/16 :goto_4d

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_4c

    nop

    nop

    :goto_23
    move-object v0, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_24
    iget-object v4, p0, Lfg;->z:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_25
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {p0, v0, v2, v1}, Lfg;->b(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_27
    invoke-static {v1, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_28
    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/16 :goto_82

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_81

    nop

    nop

    :goto_2b
    iget v1, p0, Lfg;->m:I

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    :goto_2c
    check-cast v2, Ldug;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object v0, v0, Lfh;->f:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_2e
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    goto/32 :goto_a2

    nop

    nop

    :goto_2f
    invoke-interface {p1, v0, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(CI)Landroid/view/MenuItem;

    :goto_30
    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_31
    iget-object v0, p0, Lfg;->A:Ljava/lang/CharSequence;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_32
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    return-void

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_35
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_36
    iget-object v0, v0, Lfh;->e:Landroid/content/Context;

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    :goto_37
    if-nez v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    :cond_5
    goto/32 :goto_6d

    nop

    nop

    :goto_38
    iget-object v4, v0, Lfh;->f:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    :goto_39
    iget v0, p0, Lfg;->w:I

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    move v1, v2

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_3c
    if-nez v1, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :cond_6
    goto/32 :goto_b

    nop

    nop

    :goto_3d
    iget v0, p0, Lfg;->v:I

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    :goto_3e
    iget-object v0, p0, Lfg;->F:Ldvu;

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;

    :goto_40
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_41
    goto/16 :goto_70

    nop

    nop

    :goto_42
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    goto/16 :goto_e

    nop

    nop

    nop

    :goto_44
    goto/32 :goto_a0

    nop

    nop

    nop

    :goto_45
    const-string v1, "Ignoring attribute \'itemActionViewLayout\'. Action view already specified."

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_46
    if-ge v0, v1, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    iget-object v4, v0, Lfh;->e:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    move-result-object v0

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    :goto_49
    const-string v0, "MenuItemCompat"

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    :goto_4a
    if-nez v0, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    :cond_8
    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    if-nez v0, :cond_9

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    :cond_9
    goto/32 :goto_23

    nop

    nop

    :goto_4c
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    :goto_4d
    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    :goto_4e
    if-eqz v0, :cond_a

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_98

    nop

    nop

    nop

    nop

    :goto_4f
    instance-of v0, p1, Lge;

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

    :goto_50
    goto/16 :goto_40

    nop

    :goto_51
    goto/32 :goto_3f

    nop

    nop

    :goto_52
    if-nez v0, :cond_b

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_53
    move-object v1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_54
    if-nez v0, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_3c

    nop

    nop

    :goto_55
    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;

    :goto_56
    goto/32 :goto_33

    nop

    nop

    :goto_57
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_58
    check-cast v1, Ldug;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_59
    const-string p1, "The android:onClick attribute cannot be used within a restricted context"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    :goto_5a
    invoke-interface {v3, v0, v2}, Ldug;->setNumericShortcut(CI)Landroid/view/MenuItem;

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    iget-boolean v0, p0, Lfg;->s:Z

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    invoke-virtual {v0, v4}, Lfh;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    :goto_5d
    iget-object p0, p0, Lfg;->C:Landroid/content/res/ColorStateList;

    nop

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    :goto_5e
    iget-boolean v1, p0, Lfg;->u:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_5f
    iput-object v4, v0, Lfh;->f:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    :goto_60
    goto/32 :goto_2d

    nop

    nop

    :goto_61
    goto/16 :goto_28

    nop

    :goto_62
    goto/32 :goto_4f

    nop

    nop

    :goto_63
    if-nez v1, :cond_d

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_d
    goto/32 :goto_75

    nop

    nop

    :goto_64
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    :goto_65
    iget v1, p0, Lfg;->r:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_66
    instance-of v1, p1, Ldug;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_67
    const-string v1, "MenuItemWrapper"

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    :goto_68
    return-void

    nop

    nop

    :goto_69
    goto/32 :goto_55

    nop

    nop

    nop

    :goto_6a
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    iget-object v0, p0, Lfg;->z:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_6c
    iget-char v0, p0, Lfg;->p:C

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    move-object v0, p1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_6e
    invoke-interface {v2, v0}, Ldug;->a(Ljava/lang/CharSequence;)V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_70
    goto/32 :goto_3e

    nop

    nop

    :goto_71
    goto/32 :goto_8b

    nop

    nop

    nop

    :goto_72
    new-instance v1, Lff;

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_73
    check-cast p1, Ldug;

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

    :goto_74
    if-eqz v4, :cond_e

    nop

    goto/32 :goto_60

    nop

    :cond_e
    goto/32 :goto_47

    nop

    nop

    nop

    :goto_75
    move-object v3, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_76
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTooltipText(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    :goto_77
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_78
    move-object v3, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    :goto_79
    if-lez v0, :cond_f

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_8a

    nop

    :goto_7a
    iget-object v0, p0, Lfg;->x:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    :goto_7b
    iget-object v1, p0, Lfg;->E:Lfh;

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    move-object v2, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    const/4 v1, 0x2

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_7e
    check-cast v2, Ldug;

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    :goto_7f
    goto/16 :goto_28

    nop

    nop

    nop

    :catch_0
    move-exception v0

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_80
    iget-object v1, p0, Lfg;->l:Ljava/lang/CharSequence;

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_81
    invoke-interface {p1, v0, v2}, Landroid/view/MenuItem;->setNumericShortcut(CI)Landroid/view/MenuItem;

    :goto_82
    goto/32 :goto_99

    nop

    nop

    :goto_83
    const v0, 0x8

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    :goto_84
    if-nez v1, :cond_10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    :cond_10
    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_85
    move-object v2, p1

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_86
    invoke-interface {v2, v0}, Ldug;->b(Ljava/lang/CharSequence;)V

    goto/32 :goto_a6

    nop

    nop

    nop

    :goto_87
    invoke-virtual {v0}, Landroid/content/Context;->isRestricted()Z

    move-result v0

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_88
    iget v2, p0, Lfg;->o:I

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_89
    if-nez p0, :cond_11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    :cond_11
    goto/32 :goto_8d

    nop

    nop

    :goto_8a
    goto/32 :goto_34

    nop

    nop

    :goto_8b
    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_8c
    move v1, v3

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    if-nez v1, :cond_12

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_8e
    if-nez v1, :cond_13

    nop

    goto/32 :goto_2a

    nop

    :cond_13
    goto/32 :goto_78

    nop

    nop

    nop

    :goto_8f
    iget-object v1, v1, Lfh;->c:[Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_90
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_91
    if-gez v0, :cond_14

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_92
    check-cast v2, Ldug;

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    :goto_93
    iget-boolean v1, p0, Lfg;->t:Z

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_94
    sget-object v2, Lfh;->a:[Ljava/lang/Class;

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    :goto_95
    goto/16 :goto_3b

    nop

    :goto_96
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_97
    const-string v4, "Error while calling setExclusiveCheckable"

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_98
    iget-object v0, p0, Lfg;->E:Lfh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    :goto_99
    iget-object v0, p0, Lfg;->D:Landroid/graphics/PorterDuff$Mode;

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_9a
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9b
    goto/32 :goto_31

    nop

    nop

    :goto_9c
    iget-object v0, p0, Lfg;->B:Ljava/lang/CharSequence;

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    check-cast v3, Ldug;

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    if-gtz v1, :cond_15

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    :cond_15
    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    const-string v1, "setActionProvider: item does not implement SupportMenuItem; ignoring"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    :goto_a0
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_a1
    const v1, 0x1c

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_a2
    move v2, v3

    nop

    :goto_a3
    goto/32 :goto_39

    nop

    nop

    nop

    :goto_a4
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_a5
    const/4 v3, 0x1

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    goto/16 :goto_77

    nop

    :goto_a7
    goto/32 :goto_76

    nop

    nop

    nop

    nop

    :goto_a8
    if-nez v0, :cond_16

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    :cond_16
    goto/32 :goto_7b

    nop

    nop

    nop

    nop
.end method
