.class public final Ldan;
.super Lhsc;

# interfaces
.implements Ldap;


# static fields
.field public static final a:Ljava/lang/Integer;


# instance fields
.field private final b:Ldhi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Ldan;->a:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lhrz;Ldhi;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lhsc;-><init>(Landroid/content/Context;Lhrz;)V

    iput-object p3, p0, Ldan;->b:Ldhi;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 11

    iget-object v0, p0, Ldan;->g:Landroid/content/Context;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lhsa;

    const v4, 0x7f1404eb

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v4, 0x7f1404ea

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v4, "https://www.gstatic.com/aiux/gca/stabilization/Standard_EDUPanel_376x320.gif"

    invoke-static {v4}, Ligo;->i(Ljava/lang/Object;)Ligo;

    move-result-object v4

    invoke-static {v4}, Lmvv;->l(Ljava/lang/Object;)Lmvv;

    move-result-object v7

    const v4, 0x7f1404e9

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const v10, 0x7f1404e2

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lhsa;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v2, 0x7f1404ef

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Ldan;->b:Ldhi;

    sget-object v4, Ldgu;->V:Ldhj;

    invoke-interface {v2, v4}, Ldhi;->l(Ldhj;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lhsa;

    const v4, 0x7f1404e5

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v4, 0x7f1404e4

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v4, "https://www.gstatic.com/aiux/gca/stabilization/Locked_EDUPanel_376x320.gif"

    invoke-static {v4}, Ligo;->i(Ljava/lang/Object;)Ligo;

    move-result-object v4

    invoke-static {v4}, Lmvv;->l(Ljava/lang/Object;)Lmvv;

    move-result-object v7

    const v4, 0x7f1404e3

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lhsa;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v2, 0x7f1404ed

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v2, p0, Ldan;->b:Ldhi;

    sget-object v4, Ldgu;->W:Ldhj;

    invoke-interface {v2, v4}, Ldhi;->l(Ldhj;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lhsa;

    const v4, 0x7f1404e1

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v4, 0x7f1404e0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v4, "https://www.gstatic.com/aiux/gca/stabilization/Active_EDUPanel_376x320.gif"

    invoke-static {v4}, Ligo;->i(Ljava/lang/Object;)Ligo;

    move-result-object v4

    invoke-static {v4}, Lmvv;->l(Ljava/lang/Object;)Lmvv;

    move-result-object v7

    const v4, 0x7f1404df

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lhsa;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v2, 0x7f1404ec

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v2, p0, Ldan;->b:Ldhi;

    sget-object v4, Ldgu;->X:Ldhj;

    invoke-interface {v2, v4}, Ldhi;->l(Ldhj;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Lhsa;

    const v4, 0x7f1404e8

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v4, 0x7f1404e7

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v4, "https://www.gstatic.com/aiux/gca/stabilization/Panning_EDUPanel_376x320.gif"

    invoke-static {v4}, Ligo;->i(Ljava/lang/Object;)Ligo;

    move-result-object v4

    invoke-static {v4}, Lmvv;->l(Ljava/lang/Object;)Lmvv;

    move-result-object v7

    const v4, 0x7f1404e6

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lhsa;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v2, 0x7f1404ee

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {p0}, Lhsc;->c()Landroid/view/View;

    move-result-object v0

    sget-object v2, Ldan;->a:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    const/4 v4, 0x1

    new-instance v5, Ldam;

    invoke-direct {v5}, Ldam;-><init>()V

    new-instance v6, Leoi;

    const/4 v2, 0x1

    invoke-direct {v6, v1, v2}, Leoi;-><init>(Ljava/util/List;I)V

    move-object v1, p0

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Lhsc;->d(Landroid/view/View;Ljava/util/List;ILmlb;Lmli;)Landroidx/viewpager2/widget/ViewPager2;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lhsc;->e(ILandroid/view/View;Landroidx/wear/ambient/AmbientMode$AmbientController;)V

    return-void
.end method
