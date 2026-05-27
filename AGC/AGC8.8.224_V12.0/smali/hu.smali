.class public final Lhu;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/Toolbar;I)V
    .locals 0

    iput p2, p0, Lhu;->b:I

    iput-object p1, p0, Lhu;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroidx/preference/Preference;I)V
    .locals 0

    iput p2, p0, Lhu;->b:I

    iput-object p1, p0, Lhu;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/wear/ambient/AmbientModeSupport$AmbientController;I[B)V
    .locals 0

    iput p2, p0, Lhu;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhu;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcie;I)V
    .locals 0

    iput p2, p0, Lhu;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhu;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lckk;I)V
    .locals 0

    iput p2, p0, Lhu;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhu;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/settingslib/widget/MainSwitchPreference;I)V
    .locals 0

    iput p2, p0, Lhu;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhu;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ldaj;I)V
    .locals 0

    iput p2, p0, Lhu;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhu;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ldgb;I)V
    .locals 0

    iput p2, p0, Lhu;->b:I

    iput-object p1, p0, Lhu;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ldoq;I)V
    .locals 0

    iput p2, p0, Lhu;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhu;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ldpy;I)V
    .locals 0

    iput p2, p0, Lhu;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhu;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lee;I)V
    .locals 0

    iput p2, p0, Lhu;->b:I

    iput-object p1, p0, Lhu;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Leuj;I)V
    .locals 0

    iput p2, p0, Lhu;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhu;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Levt;I)V
    .locals 0

    iput p2, p0, Lhu;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhu;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Levz;I)V
    .locals 0

    iput p2, p0, Lhu;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhu;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lfkz;I)V
    .locals 0

    iput p2, p0, Lhu;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhu;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lfx;I)V
    .locals 0

    iput p2, p0, Lhu;->b:I

    iput-object p1, p0, Lhu;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 10

    iget v0, p0, Lhu;->b:I

    const/16 v1, 0xb

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object p1, p0, Lhu;->a:Ljava/lang/Object;

    check-cast p1, Lfkz;

    iget-object v0, p1, Lfkz;->b:Landroid/content/Context;

    const v1, 0x7f140312

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object p1, p1, Lfkz;->b:Landroid/content/Context;

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :pswitch_0
    iget-object p1, p0, Lhu;->a:Ljava/lang/Object;

    check-cast p1, Lfkz;

    invoke-virtual {p1}, Lfkz;->a()V

    return-void

    :pswitch_1
    iget-object p1, p0, Lhu;->a:Ljava/lang/Object;

    check-cast p1, Levz;

    iget-object v0, p1, Levz;->b:Lgue;

    iget-object v0, v0, Lgue;->i:Ljava/lang/Object;

    check-cast v0, Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p1, Levz;->b:Lgue;

    iget-object p1, p1, Lgue;->i:Ljava/lang/Object;

    check-cast p1, Lmqp;

    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ligo;

    invoke-virtual {p1}, Ligo;->k()V

    return-void

    :pswitch_2
    iget-object p1, p0, Lhu;->a:Ljava/lang/Object;

    check-cast p1, Levz;

    iget-object v0, p1, Levz;->b:Lgue;

    iget-object v0, v0, Lgue;->k:Ljava/lang/Object;

    check-cast v0, Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    iget-object v0, p1, Levz;->b:Lgue;

    iget-object v0, v0, Lgue;->k:Ljava/lang/Object;

    check-cast v0, Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljew;

    invoke-virtual {p1}, Levz;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v2, v0, Ljew;->a:Ljava/lang/Object;

    if-eqz v2, :cond_2

    invoke-static {}, Ljuh;->a()V

    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0e0030

    invoke-static {p1, v3, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v3, 0x7f0b0408

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v6, 0x7f1405a6

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f1405a7

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Landroid/text/SpannableStringBuilder;

    invoke-direct {v8, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string v6, " "

    invoke-virtual {v8, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v8, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v6, Liqv;

    invoke-direct {v6, p1}, Liqv;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v9, v7

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    invoke-virtual {v8, v6, v9, v7, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    sget-object v5, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v3, v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    invoke-static {v3}, Linb;->h(Landroid/view/View;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setLinkTextColor(I)V

    const v3, 0x7f0b0406

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;

    const v5, 0x7f1405a4

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f1405a3

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v5, p1}, Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;->a()V

    iget-object p1, v0, Ljew;->a:Ljava/lang/Object;

    check-cast p1, Lhrz;

    const v0, 0x7f1405a8

    invoke-virtual {p1, v1, v0, v2, v4}, Lhrz;->m(IILandroid/view/View;Landroid/content/DialogInterface$OnDismissListener;)V

    return-void

    :cond_2
    :goto_0
    return-void

    :pswitch_3
    iget-object p1, p0, Lhu;->a:Ljava/lang/Object;

    check-cast p1, Levz;

    iget-object v0, p1, Levz;->b:Lgue;

    iget-object v0, v0, Lgue;->h:Ljava/lang/Object;

    check-cast v0, Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Levz;->b:Lgue;

    iget-object v0, v0, Lgue;->h:Ljava/lang/Object;

    check-cast v0, Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhxv;

    invoke-virtual {p1}, Levz;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1}, Lhxv;->a(Landroid/content/Context;)V

    :cond_3
    return-void

    :pswitch_4
    iget-object p1, p0, Lhu;->a:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Levt;

    iget-object v1, v0, Levt;->ae:Levu;

    iget-object v1, v1, Levu;->g:Lmqp;

    invoke-virtual {v1}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, v0, Levt;->ae:Levu;

    iget-object v0, v0, Levu;->g:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhxv;

    check-cast p1, Lbw;

    invoke-virtual {p1}, Lbw;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p1}, Lhxv;->a(Landroid/content/Context;)V

    :cond_4
    return-void

    :pswitch_5
    iget-object p1, p0, Lhu;->a:Ljava/lang/Object;

    check-cast p1, Leuj;

    iget-object v0, p1, Leuj;->v:Ljvs;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leqg;

    iget-object v1, p1, Leuj;->l:Lmqp;

    invoke-virtual {v1}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object p1, p1, Leuj;->l:Lmqp;

    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lepz;

    invoke-interface {p1, v0, v2}, Lepz;->b(Leqg;I)V

    :cond_5
    return-void

    :pswitch_6
    iget-object p1, p0, Lhu;->a:Ljava/lang/Object;

    check-cast p1, Ldpy;

    iget-object v0, p1, Ldpy;->c:Ljwb;

    iget-object v1, p1, Ldpy;->d:Lgej;

    sget-object v2, Lgej;->a:Lgej;

    invoke-virtual {v1}, Lgej;->ordinal()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    const-string v1, "VesperBottomSheet"

    const-string v2, "Invalid beautification option"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lgyq;->a:Lgyq;

    iget v1, v1, Lgyq;->f:I

    goto :goto_1

    :pswitch_7
    sget-object v1, Lgyq;->a:Lgyq;

    iget v1, v1, Lgyq;->f:I

    goto :goto_1

    :pswitch_8
    sget-object v1, Lgyq;->c:Lgyq;

    iget v1, v1, Lgyq;->f:I

    goto :goto_1

    :pswitch_9
    sget-object v1, Lgyq;->b:Lgyq;

    iget v1, v1, Lgyq;->f:I

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljwb;->bn(Ljava/lang/Object;)V

    iget-object p1, p1, Ldpy;->b:Lhrz;

    invoke-virtual {p1}, Lhrz;->g()V

    return-void

    :pswitch_a
    iget-object p1, p0, Lhu;->a:Ljava/lang/Object;

    check-cast p1, Ldoq;

    invoke-virtual {p1, v6, v5}, Ldoq;->w(ZZ)V

    invoke-virtual {p1}, Ldoq;->k()V

    invoke-virtual {p1, v5}, Ldoq;->m(Z)V

    return-void

    :pswitch_b
    iget-object p1, p0, Lhu;->a:Ljava/lang/Object;

    check-cast p1, Ldgb;

    iget-object p1, p1, Ldgb;->h:Lmqp;

    invoke-virtual {p1}, Lmqp;->g()Z

    move-result p1

    invoke-static {p1}, Lmoz;->p(Z)V

    iget-object p1, p0, Lhu;->a:Ljava/lang/Object;

    check-cast p1, Ldgb;

    iget-object p1, p1, Ldgb;->d:Ldgc;

    invoke-virtual {p1}, Ldgc;->a()V

    iget-object p1, p0, Lhu;->a:Ljava/lang/Object;

    check-cast p1, Ldgb;

    iget-object p1, p1, Ldgb;->h:Lmqp;

    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldne;

    invoke-virtual {p1}, Ldne;->l()V

    return-void

    :pswitch_c
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iget-object v0, p0, Lhu;->a:Ljava/lang/Object;

    check-cast v0, Ldgb;

    iget-object v0, v0, Ldgb;->a:Landroid/content/Context;

    const-string v1, "com.google.android.apps.camera.legacy.app.settings.CameraSettingsActivity"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lhu;->a:Ljava/lang/Object;

    check-cast v0, Ldgb;

    iget-object v0, v0, Ldgb;->h:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldne;

    invoke-virtual {v0}, Ldne;->l()V

    iget-object v0, p0, Lhu;->a:Ljava/lang/Object;

    check-cast v0, Ldgb;

    iget-object v0, v0, Ldgb;->b:Lgus;

    invoke-interface {v0, p1}, Lgus;->g(Landroid/content/Intent;)V

    return-void

    :pswitch_d
    iget-object p1, p0, Lhu;->a:Ljava/lang/Object;

    check-cast p1, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    invoke-virtual {p1}, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->a()V

    return-void

    :pswitch_e
    iget-object p1, p0, Lhu;->a:Ljava/lang/Object;

    check-cast p1, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    invoke-virtual {p1}, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->a()V

    return-void

    :pswitch_f
    iget-object v0, p0, Lhu;->a:Ljava/lang/Object;

    check-cast v0, Ldaj;

    iget-object v4, v0, Ldaj;->n:Ldak;

    iget-boolean v7, v4, Ldak;->e:Z

    if-nez v7, :cond_6

    goto/16 :goto_5

    :cond_6
    iget-boolean v4, v4, Ldak;->d:Z

    if-nez v4, :cond_7

    invoke-static {p1}, Lnom;->h(Landroid/view/View;)V

    iget-object p1, v0, Ldaj;->u:Lkad;

    if-nez p1, :cond_a

    iget-object p1, v0, Ldaj;->k:Lgeh;

    invoke-interface {p1}, Lgeh;->a()Landroid/view/View;

    move-result-object p1

    new-instance v4, Lifx;

    iget-object v6, v0, Ldaj;->f:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f140167

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lifx;-><init>(Ljava/lang/String;)V

    sget-object v6, Liko;->a:Liko;

    iget-object v6, v0, Ldaj;->m:Lcom/google/android/apps/camera/camcorder/ui/stabilization/StabilizationUi;

    iget-object v6, v6, Lcom/google/android/apps/camera/camcorder/ui/stabilization/StabilizationUi;->d:Liko;

    invoke-virtual {v6}, Liko;->ordinal()I

    move-result v6

    const/16 v7, 0x14

    packed-switch v6, :pswitch_data_2

    invoke-virtual {v4, p1}, Lifx;->r(Landroid/view/View;)V

    goto :goto_2

    :pswitch_10
    invoke-virtual {v4, p1, v7}, Lifx;->j(Landroid/view/View;I)V

    goto :goto_2

    :pswitch_11
    invoke-virtual {v4, p1, v7}, Lifx;->h(Landroid/view/View;I)V

    :goto_2
    invoke-interface {v4}, Lify;->i()V

    invoke-interface {v4}, Lifz;->k()V

    new-instance p1, Lczl;

    invoke-direct {p1, v0, v3}, Lczl;-><init>(Ldaj;I)V

    iget-object v3, v0, Ldaj;->e:Ljuh;

    invoke-interface {v4, p1, v3}, Liga;->g(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    new-instance p1, Lczl;

    invoke-direct {p1, v0, v2}, Lczl;-><init>(Ldaj;I)V

    iget-object v2, v0, Ldaj;->e:Ljuh;

    invoke-interface {v4, p1, v2}, Liga;->f(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    const/16 p1, 0x1388

    iput p1, v4, Lifx;->e:I

    iput v1, v4, Lifx;->m:I

    iget-object p1, v0, Ldaj;->c:Lell;

    iput-object p1, v4, Lifx;->i:Lell;

    iput-boolean v5, v4, Lifx;->f:Z

    iput-boolean v5, v4, Lifx;->g:Z

    invoke-interface {v4}, Liga;->l()V

    invoke-interface {v4}, Liga;->o()V

    invoke-interface {v4}, Liga;->a()Lkad;

    move-result-object p1

    iput-object p1, v0, Ldaj;->u:Lkad;

    return-void

    :cond_7
    iget-object v1, v0, Ldaj;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-static {p1}, Lnom;->h(Landroid/view/View;)V

    iget-object p1, v0, Ldaj;->a:Ldau;

    invoke-interface {p1}, Ldau;->c()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, v0, Ldaj;->a:Ldau;

    invoke-interface {p1}, Ldau;->b()V

    goto :goto_4

    :cond_8
    iget-object p1, v0, Ldaj;->a:Ldau;

    check-cast p1, Ldas;

    iget-object v1, p1, Ldas;->b:Ldhi;

    sget-object v2, Ldho;->cm:Ldhj;

    invoke-interface {v1, v2}, Ldhi;->l(Ldhj;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p1, Ldas;->f:Licy;

    invoke-virtual {v1}, Licy;->f()V

    goto :goto_3

    :cond_9
    iget-object v1, p1, Ldas;->c:Lcom/google/android/apps/camera/ui/popupmenu/PopupMenuView;

    invoke-virtual {v1}, Lcom/google/android/apps/camera/ui/popupmenu/PopupMenuView;->c()V

    :goto_3
    iget-object p1, p1, Ldas;->e:Ljava/util/List;

    invoke-static {p1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p1

    sget-object v1, Lcot;->e:Lcot;

    invoke-interface {p1, v1}, Lj$/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    :goto_4
    iget-object p1, v0, Ldaj;->j:Lgzn;

    sget-object v1, Lgzd;->K:Lgzs;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lgzn;->e(Lgzb;Ljava/lang/Object;)V

    iget-object p1, v0, Ldaj;->j:Lgzn;

    sget-object v0, Lgzd;->L:Lgzr;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lgzn;->e(Lgzb;Ljava/lang/Object;)V

    return-void

    :cond_a
    :goto_5
    return-void

    :pswitch_12
    iget-object p1, p0, Lhu;->a:Ljava/lang/Object;

    check-cast p1, Lckk;

    iget-object v0, p1, Lckk;->k:Lebi;

    iget-boolean v0, v0, Lebi;->h:Z

    if-eqz v0, :cond_b

    invoke-virtual {p1, v6, v6}, Lckk;->h(ZZ)V

    return-void

    :cond_b
    iget-object v0, p1, Lckk;->d:Ljwb;

    check-cast v0, Ljvk;

    iget-object v0, v0, Ljvk;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/2addr v0, v6

    iget-object v1, p1, Lckk;->d:Ljwb;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Ljwb;->bn(Ljava/lang/Object;)V

    invoke-virtual {p1, v0, v3}, Lckk;->G(ZI)V

    return-void

    :pswitch_13
    iget-object p1, p0, Lhu;->a:Ljava/lang/Object;

    check-cast p1, Lcie;

    invoke-virtual {p1}, Lcie;->d()V

    return-void

    :pswitch_14
    iget-object p1, p0, Lhu;->a:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroidx/preference/TwoStatePreference;

    iget-boolean v0, v0, Landroidx/preference/TwoStatePreference;->a:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    check-cast p1, Landroidx/preference/Preference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->W(Ljava/lang/Object;)Z

    return-void

    :pswitch_15
    iget-object v0, p0, Lhu;->a:Ljava/lang/Object;

    check-cast v0, Landroidx/preference/Preference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->cm(Landroid/view/View;)V

    return-void

    :pswitch_16
    iget-object p1, p0, Lhu;->a:Ljava/lang/Object;

    check-cast p1, Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->k()V

    return-void

    :pswitch_17
    iget-object v0, p0, Lhu;->a:Ljava/lang/Object;

    check-cast v0, Lee;

    iget-object v1, v0, Lee;->j:Landroid/widget/Button;

    if-ne p1, v1, :cond_c

    iget-object v1, v0, Lee;->l:Landroid/os/Message;

    if-eqz v1, :cond_c

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v4

    goto :goto_6

    :cond_c
    iget-object v1, v0, Lee;->m:Landroid/widget/Button;

    if-ne p1, v1, :cond_d

    iget-object p1, v0, Lee;->o:Landroid/os/Message;

    if-eqz p1, :cond_d

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v4

    goto :goto_6

    :cond_d
    iget-object p1, v0, Lee;->p:Landroid/widget/Button;

    :goto_6
    if-eqz v4, :cond_e

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    :cond_e
    iget-object p1, p0, Lhu;->a:Ljava/lang/Object;

    check-cast p1, Lee;

    iget-object v0, p1, Lee;->H:Landroid/os/Handler;

    iget-object p1, p1, Lee;->b:Lff;

    invoke-virtual {v0, v6, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    :pswitch_18
    iget-object p1, p0, Lhu;->a:Ljava/lang/Object;

    check-cast p1, Lfx;

    invoke-virtual {p1}, Lfx;->f()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x24
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method
