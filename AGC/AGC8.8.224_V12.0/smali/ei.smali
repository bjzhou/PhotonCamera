.class public Lei;
.super Lbz;

# interfaces
.implements Labp;


# instance fields
.field private q:Lel;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lbz;-><init>()V

    invoke-virtual {p0}, Lpl;->getSavedStateRegistry()Laqm;

    move-result-object v0

    new-instance v1, Lcg;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcg;-><init>(Lei;I)V

    const-string v2, "androidx:appcompat"

    invoke-virtual {v0, v2, v1}, Laqm;->b(Ljava/lang/String;Laql;)V

    new-instance v0, Leh;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Leh;-><init>(Lei;I)V

    invoke-virtual {p0, v0}, Lpl;->l(Lpu;)V

    return-void
.end method

.method private final n()V
    .locals 1

    invoke-virtual {p0}, Lei;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p0}, Laci;->c(Landroid/view/View;Lakv;)V

    invoke-virtual {p0}, Lei;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p0}, Lacj;->b(Landroid/view/View;Lalw;)V

    invoke-virtual {p0}, Lei;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p0}, Lafh;->A(Landroid/view/View;Laqn;)V

    invoke-virtual {p0}, Lei;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p0}, Lgg;->c(Landroid/view/View;Lps;)V

    return-void
.end method


# virtual methods
.method public final addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    invoke-direct {p0}, Lei;->n()V

    invoke-virtual {p0}, Lei;->j()Lel;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lel;->d(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected final attachBaseContext(Landroid/content/Context;)V
    .locals 8

    invoke-virtual {p0}, Lei;->j()Lel;

    move-result-object v0

    check-cast v0, Lfd;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lfd;->C:Z

    invoke-virtual {v0}, Lfd;->q()I

    move-result v2

    invoke-virtual {v0, p1, v2}, Lfd;->r(Landroid/content/Context;I)I

    move-result v2

    invoke-static {p1}, Lfd;->n(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p1}, Lel;->n(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    sget-boolean v3, Lel;->c:Z

    if-nez v3, :cond_1

    sget-object v3, Lel;->a:Lfi;

    new-instance v4, Lbe;

    const/4 v5, 0x7

    invoke-direct {v4, p1, v5}, Lbe;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v3, v4}, Lfi;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    sget-boolean v3, Lfd;->g:Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    instance-of v3, p1, Landroid/view/ContextThemeWrapper;

    if-eqz v3, :cond_2

    invoke-virtual {v0, p1, v2, v5, v4}, Lfd;->P(Landroid/content/Context;ILandroid/content/res/Configuration;Z)Landroid/content/res/Configuration;

    move-result-object v3

    :try_start_0
    move-object v6, p1

    check-cast v6, Landroid/view/ContextThemeWrapper;

    invoke-virtual {v6, v3}, Landroid/view/ContextThemeWrapper;->applyOverrideConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v3

    :cond_2
    instance-of v3, p1, Lqi;

    if-eqz v3, :cond_3

    invoke-virtual {v0, p1, v2, v5, v4}, Lfd;->P(Landroid/content/Context;ILandroid/content/res/Configuration;Z)Landroid/content/res/Configuration;

    move-result-object v3

    :try_start_1
    move-object v4, p1

    check-cast v4, Lqi;

    invoke-virtual {v4, v3}, Lqi;->a(Landroid/content/res/Configuration;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_3

    :catch_1
    move-exception v3

    :cond_3
    sget-boolean v3, Lfd;->f:Z

    if-eqz v3, :cond_1b

    new-instance v3, Landroid/content/res/Configuration;

    invoke-direct {v3}, Landroid/content/res/Configuration;-><init>()V

    const/4 v4, -0x1

    iput v4, v3, Landroid/content/res/Configuration;->uiMode:I

    const/4 v4, 0x0

    iput v4, v3, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {p1, v3}, Ler;->b(Landroid/content/Context;Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v7, v6, Landroid/content/res/Configuration;->uiMode:I

    iput v7, v3, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual {v3, v6}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v7

    if-nez v7, :cond_19

    new-instance v5, Landroid/content/res/Configuration;

    invoke-direct {v5}, Landroid/content/res/Configuration;-><init>()V

    iput v4, v5, Landroid/content/res/Configuration;->fontScale:F

    if-eqz v6, :cond_19

    invoke-virtual {v3, v6}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v4

    if-nez v4, :cond_4

    goto/16 :goto_1

    :cond_4
    iget v4, v3, Landroid/content/res/Configuration;->fontScale:F

    iget v7, v6, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v4, v4, v7

    if-eqz v4, :cond_5

    iget v4, v6, Landroid/content/res/Configuration;->fontScale:F

    iput v4, v5, Landroid/content/res/Configuration;->fontScale:F

    :cond_5
    iget v4, v3, Landroid/content/res/Configuration;->mcc:I

    iget v7, v6, Landroid/content/res/Configuration;->mcc:I

    if-eq v4, v7, :cond_6

    iget v4, v6, Landroid/content/res/Configuration;->mcc:I

    iput v4, v5, Landroid/content/res/Configuration;->mcc:I

    :cond_6
    iget v4, v3, Landroid/content/res/Configuration;->mnc:I

    iget v7, v6, Landroid/content/res/Configuration;->mnc:I

    if-eq v4, v7, :cond_7

    iget v4, v6, Landroid/content/res/Configuration;->mnc:I

    iput v4, v5, Landroid/content/res/Configuration;->mnc:I

    :cond_7
    invoke-static {v3, v6, v5}, Let;->b(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    iget v4, v3, Landroid/content/res/Configuration;->touchscreen:I

    iget v7, v6, Landroid/content/res/Configuration;->touchscreen:I

    if-eq v4, v7, :cond_8

    iget v4, v6, Landroid/content/res/Configuration;->touchscreen:I

    iput v4, v5, Landroid/content/res/Configuration;->touchscreen:I

    :cond_8
    iget v4, v3, Landroid/content/res/Configuration;->keyboard:I

    iget v7, v6, Landroid/content/res/Configuration;->keyboard:I

    if-eq v4, v7, :cond_9

    iget v4, v6, Landroid/content/res/Configuration;->keyboard:I

    iput v4, v5, Landroid/content/res/Configuration;->keyboard:I

    :cond_9
    iget v4, v3, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v7, v6, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eq v4, v7, :cond_a

    iget v4, v6, Landroid/content/res/Configuration;->keyboardHidden:I

    iput v4, v5, Landroid/content/res/Configuration;->keyboardHidden:I

    :cond_a
    iget v4, v3, Landroid/content/res/Configuration;->navigation:I

    iget v7, v6, Landroid/content/res/Configuration;->navigation:I

    if-eq v4, v7, :cond_b

    iget v4, v6, Landroid/content/res/Configuration;->navigation:I

    iput v4, v5, Landroid/content/res/Configuration;->navigation:I

    :cond_b
    iget v4, v3, Landroid/content/res/Configuration;->navigationHidden:I

    iget v7, v6, Landroid/content/res/Configuration;->navigationHidden:I

    if-eq v4, v7, :cond_c

    iget v4, v6, Landroid/content/res/Configuration;->navigationHidden:I

    iput v4, v5, Landroid/content/res/Configuration;->navigationHidden:I

    :cond_c
    iget v4, v3, Landroid/content/res/Configuration;->orientation:I

    iget v7, v6, Landroid/content/res/Configuration;->orientation:I

    if-eq v4, v7, :cond_d

    iget v4, v6, Landroid/content/res/Configuration;->orientation:I

    iput v4, v5, Landroid/content/res/Configuration;->orientation:I

    :cond_d
    iget v4, v3, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v4, v4, 0xf

    iget v7, v6, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v7, v7, 0xf

    if-eq v4, v7, :cond_e

    iget v4, v5, Landroid/content/res/Configuration;->screenLayout:I

    iget v7, v6, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v7, v7, 0xf

    or-int/2addr v4, v7

    iput v4, v5, Landroid/content/res/Configuration;->screenLayout:I

    :cond_e
    iget v4, v3, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v4, v4, 0xc0

    iget v7, v6, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v7, v7, 0xc0

    if-eq v4, v7, :cond_f

    iget v4, v5, Landroid/content/res/Configuration;->screenLayout:I

    iget v7, v6, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v7, v7, 0xc0

    or-int/2addr v4, v7

    iput v4, v5, Landroid/content/res/Configuration;->screenLayout:I

    :cond_f
    iget v4, v3, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v4, v4, 0x30

    iget v7, v6, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v7, v7, 0x30

    if-eq v4, v7, :cond_10

    iget v4, v5, Landroid/content/res/Configuration;->screenLayout:I

    iget v7, v6, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v7, v7, 0x30

    or-int/2addr v4, v7

    iput v4, v5, Landroid/content/res/Configuration;->screenLayout:I

    :cond_10
    iget v4, v3, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v4, v4, 0x300

    iget v7, v6, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v7, v7, 0x300

    if-eq v4, v7, :cond_11

    iget v4, v5, Landroid/content/res/Configuration;->screenLayout:I

    iget v7, v6, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v7, v7, 0x300

    or-int/2addr v4, v7

    iput v4, v5, Landroid/content/res/Configuration;->screenLayout:I

    :cond_11
    iget v4, v3, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v4, v4, 0x3

    iget v7, v6, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v7, v7, 0x3

    if-eq v4, v7, :cond_12

    iget v4, v5, Landroid/content/res/Configuration;->colorMode:I

    iget v7, v6, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v7, v7, 0x3

    or-int/2addr v4, v7

    iput v4, v5, Landroid/content/res/Configuration;->colorMode:I

    :cond_12
    iget v4, v3, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v4, v4, 0xc

    iget v7, v6, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v7, v7, 0xc

    if-eq v4, v7, :cond_13

    iget v4, v5, Landroid/content/res/Configuration;->colorMode:I

    iget v7, v6, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v7, v7, 0xc

    or-int/2addr v4, v7

    iput v4, v5, Landroid/content/res/Configuration;->colorMode:I

    :cond_13
    iget v4, v3, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v4, v4, 0xf

    iget v7, v6, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v7, v7, 0xf

    if-eq v4, v7, :cond_14

    iget v4, v5, Landroid/content/res/Configuration;->uiMode:I

    iget v7, v6, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v7, v7, 0xf

    or-int/2addr v4, v7

    iput v4, v5, Landroid/content/res/Configuration;->uiMode:I

    :cond_14
    iget v4, v3, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v4, v4, 0x30

    iget v7, v6, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v7, v7, 0x30

    if-eq v4, v7, :cond_15

    iget v4, v5, Landroid/content/res/Configuration;->uiMode:I

    iget v7, v6, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v7, v7, 0x30

    or-int/2addr v4, v7

    iput v4, v5, Landroid/content/res/Configuration;->uiMode:I

    :cond_15
    iget v4, v3, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v7, v6, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eq v4, v7, :cond_16

    iget v4, v6, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v4, v5, Landroid/content/res/Configuration;->screenWidthDp:I

    :cond_16
    iget v4, v3, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v7, v6, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v4, v7, :cond_17

    iget v4, v6, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v4, v5, Landroid/content/res/Configuration;->screenHeightDp:I

    :cond_17
    iget v4, v3, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v7, v6, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eq v4, v7, :cond_18

    iget v4, v6, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v4, v5, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    :cond_18
    iget v3, v3, Landroid/content/res/Configuration;->densityDpi:I

    iget v4, v6, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v3, v4, :cond_19

    iget v3, v6, Landroid/content/res/Configuration;->densityDpi:I

    iput v3, v5, Landroid/content/res/Configuration;->densityDpi:I

    goto :goto_1

    :cond_19
    :goto_1
    invoke-virtual {v0, p1, v2, v5, v1}, Lfd;->P(Landroid/content/Context;ILandroid/content/res/Configuration;Z)Landroid/content/res/Configuration;

    move-result-object v0

    new-instance v1, Lqi;

    const v2, 0x7f1503d6

    invoke-direct {v1, p1, v2}, Lqi;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v0}, Lqi;->a(Landroid/content/res/Configuration;)V

    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz p1, :cond_1a

    invoke-virtual {v1}, Lqi;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-static {p1}, Lacm;->a(Landroid/content/res/Resources$Theme;)V

    goto :goto_2

    :cond_1a
    goto :goto_2

    :catch_2
    move-exception p1

    :goto_2
    move-object p1, v1

    :cond_1b
    :goto_3
    invoke-super {p0, p1}, Lbz;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public final closeOptionsMenu()V
    .locals 3

    invoke-virtual {p0}, Lei;->i()Ldy;

    move-result-object v0

    invoke-virtual {p0}, Lei;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ldy;->k()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Lbz;->closeOptionsMenu()V

    :cond_1
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0}, Lei;->i()Ldy;

    move-result-object v1

    const/16 v2, 0x52

    if-ne v0, v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Ldy;->o(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Lbz;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public final findViewById(I)Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lei;->j()Lel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lel;->c(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final getMenuInflater()Landroid/view/MenuInflater;
    .locals 3

    invoke-virtual {p0}, Lei;->j()Lel;

    move-result-object v0

    check-cast v0, Lfd;

    iget-object v1, v0, Lfd;->m:Landroid/view/MenuInflater;

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lfd;->C()V

    new-instance v1, Lgd;

    iget-object v2, v0, Lfd;->l:Ldy;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ldy;->b()Landroid/content/Context;

    move-result-object v2

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lfd;->i:Landroid/content/Context;

    :goto_0
    invoke-direct {v1, v2}, Lgd;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lfd;->m:Landroid/view/MenuInflater;

    :cond_1
    iget-object v0, v0, Lfd;->m:Landroid/view/MenuInflater;

    return-object v0
.end method

.method public final h()Landroid/content/Intent;
    .locals 1

    invoke-static {p0}, Lss;->f(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public final i()Ldy;
    .locals 1

    invoke-virtual {p0}, Lei;->j()Lel;

    move-result-object v0

    invoke-virtual {v0}, Lel;->b()Ldy;

    move-result-object v0

    return-object v0
.end method

.method public final invalidateOptionsMenu()V
    .locals 1

    invoke-virtual {p0}, Lei;->j()Lel;

    move-result-object v0

    invoke-virtual {v0}, Lel;->f()V

    return-void
.end method

.method public final j()Lel;
    .locals 2

    iget-object v0, p0, Lei;->q:Lel;

    if-nez v0, :cond_0

    sget v0, Lel;->b:I

    new-instance v0, Lfd;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p0}, Lfd;-><init>(Landroid/content/Context;Landroid/view/Window;Ljava/lang/Object;)V

    iput-object v0, p0, Lei;->q:Lel;

    :cond_0
    iget-object v0, p0, Lei;->q:Lel;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lbz;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lei;->j()Lel;

    move-result-object p1

    check-cast p1, Lfd;

    iget-boolean v0, p1, Lfd;->w:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lfd;->t:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lfd;->b()Ldy;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ldy;->q()V

    :cond_0
    invoke-static {}, Lio;->d()Lio;

    move-result-object v0

    iget-object v1, p1, Lfd;->i:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lio;->e(Landroid/content/Context;)V

    new-instance v0, Landroid/content/res/Configuration;

    iget-object v1, p1, Lfd;->i:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p1, Lfd;->E:Landroid/content/res/Configuration;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lfd;->O(Z)V

    return-void
.end method

.method public final onContentChanged()V
    .locals 0

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lbz;->onDestroy()V

    invoke-virtual {p0}, Lei;->j()Lel;

    move-result-object v0

    invoke-virtual {v0}, Lel;->g()V

    return-void
.end method

.method public final onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 5

    invoke-super {p0, p1, p2}, Lbz;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lei;->i()Ldy;

    move-result-object p1

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p2

    const v1, 0x102002c

    const/4 v2, 0x0

    if-ne p2, v1, :cond_8

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ldy;->a()I

    move-result p1

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_8

    invoke-static {p0}, Lss;->f(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-static {p0, p1}, Laax;->c(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result p2

    if-eqz p2, :cond_6

    new-instance p1, Labq;

    invoke-direct {p1, p0}, Labq;-><init>(Landroid/content/Context;)V

    invoke-interface {p0}, Labp;->h()Landroid/content/Intent;

    move-result-object p2

    if-nez p2, :cond_1

    invoke-static {p0}, Lss;->f(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object p2

    :cond_1
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p1, Labq;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    :cond_2
    iget-object v3, p1, Labq;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    :try_start_0
    iget-object v4, p1, Labq;->b:Landroid/content/Context;

    invoke-static {v4, v1}, Lss;->g(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_3

    iget-object v4, p1, Labq;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v4, p1, Labq;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-static {v4, v1}, Lss;->g(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_3
    iget-object v1, p1, Labq;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "TaskStackBuilder"

    const-string v0, "Bad ComponentName while traversing activity parent metadata"

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_4
    :goto_1
    iget-object p2, p1, Labq;->a:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_5

    iget-object p2, p1, Labq;->a:Ljava/util/ArrayList;

    new-array v1, v2, [Landroid/content/Intent;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/content/Intent;

    new-instance v1, Landroid/content/Intent;

    aget-object v3, p2, v2

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const v3, 0x1000c000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    aput-object v1, p2, v2

    iget-object p1, p1, Labq;->b:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {p1, p2, v1}, Labr;->a(Landroid/content/Context;[Landroid/content/Intent;Landroid/os/Bundle;)V

    :try_start_1
    invoke-static {p0}, Laap;->a(Landroid/app/Activity;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    invoke-virtual {p0}, Lei;->finish()V

    goto :goto_2

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No intents added to TaskStackBuilder; cannot startActivities"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    invoke-static {p0, p1}, Laax;->b(Landroid/app/Activity;Landroid/content/Intent;)Z

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    :goto_2
    return v0

    :cond_8
    return v2
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lbz;->onPostCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lei;->j()Lel;

    move-result-object p1

    check-cast p1, Lfd;

    invoke-virtual {p1}, Lfd;->B()V

    return-void
.end method

.method protected onPostResume()V
    .locals 2

    invoke-super {p0}, Lbz;->onPostResume()V

    invoke-virtual {p0}, Lei;->j()Lel;

    move-result-object v0

    check-cast v0, Lfd;

    invoke-virtual {v0}, Lfd;->b()Ldy;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ldy;->h(Z)V

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 2

    invoke-super {p0}, Lbz;->onStart()V

    invoke-virtual {p0}, Lei;->j()Lel;

    move-result-object v0

    check-cast v0, Lfd;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lfd;->O(Z)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Lbz;->onStop()V

    invoke-virtual {p0}, Lei;->j()Lel;

    move-result-object v0

    invoke-virtual {v0}, Lel;->h()V

    return-void
.end method

.method protected final onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lbz;->onTitleChanged(Ljava/lang/CharSequence;I)V

    invoke-virtual {p0}, Lei;->j()Lel;

    move-result-object p2

    invoke-virtual {p2, p1}, Lel;->m(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final openOptionsMenu()V
    .locals 3

    invoke-virtual {p0}, Lei;->i()Ldy;

    move-result-object v0

    invoke-virtual {p0}, Lei;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ldy;->p()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Lbz;->openOptionsMenu()V

    :cond_1
    return-void
.end method

.method public final setContentView(I)V
    .locals 1

    invoke-direct {p0}, Lei;->n()V

    invoke-virtual {p0}, Lei;->j()Lel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lel;->j(I)V

    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Lei;->n()V

    invoke-virtual {p0}, Lei;->j()Lel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lel;->k(Landroid/view/View;)V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    invoke-direct {p0}, Lei;->n()V

    invoke-virtual {p0}, Lei;->j()Lel;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lel;->l(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final setTheme(I)V
    .locals 1

    invoke-super {p0, p1}, Lbz;->setTheme(I)V

    invoke-virtual {p0}, Lei;->j()Lel;

    move-result-object v0

    check-cast v0, Lfd;

    iput p1, v0, Lfd;->F:I

    return-void
.end method
