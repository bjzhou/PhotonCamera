.class public final synthetic Lgzc;
.super Ljava/lang/Object;

# interfaces
.implements Lgza;


# static fields
.field public static final synthetic a:Lgzc;

.field public static final synthetic b:Lgzc;

.field public static final synthetic c:Lgzc;

.field public static final synthetic d:Lgzc;

.field public static final synthetic e:Lgzc;

.field public static final synthetic f:Lgzc;

.field public static final synthetic g:Lgzc;

.field public static final synthetic h:Lgzc;

.field public static final synthetic i:Lgzc;


# instance fields
.field private final synthetic j:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lgzc;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lgzc;-><init>(I)V

    sput-object v0, Lgzc;->i:Lgzc;

    new-instance v0, Lgzc;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lgzc;-><init>(I)V

    sput-object v0, Lgzc;->h:Lgzc;

    new-instance v0, Lgzc;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lgzc;-><init>(I)V

    sput-object v0, Lgzc;->g:Lgzc;

    new-instance v0, Lgzc;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lgzc;-><init>(I)V

    sput-object v0, Lgzc;->f:Lgzc;

    new-instance v0, Lgzc;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lgzc;-><init>(I)V

    sput-object v0, Lgzc;->e:Lgzc;

    new-instance v0, Lgzc;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lgzc;-><init>(I)V

    sput-object v0, Lgzc;->d:Lgzc;

    new-instance v0, Lgzc;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lgzc;-><init>(I)V

    sput-object v0, Lgzc;->c:Lgzc;

    new-instance v0, Lgzc;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lgzc;-><init>(I)V

    sput-object v0, Lgzc;->b:Lgzc;

    new-instance v0, Lgzc;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgzc;-><init>(I)V

    sput-object v0, Lgzc;->a:Lgzc;

    return-void
.end method

.method private synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lgzc;->j:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ldhi;)Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lgzc;->j:I

    const/4 v1, 0x2

    const-string v2, "off"

    const-string v3, "ns"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lgzd;->a:Ljava/lang/Integer;

    sget-object v0, Ldhv;->B:Ldhj;

    invoke-interface {p1, v0}, Ldhi;->l(Ldhj;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto/16 :goto_3

    :pswitch_0
    sget-object p1, Lgzd;->a:Ljava/lang/Integer;

    return-object p1

    :pswitch_1
    sget-object p1, Lgzd;->a:Ljava/lang/Integer;

    sget p1, Ladg;->a:I

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object v0, Lgzd;->a:Ljava/lang/Integer;

    sget-object v0, Ldhq;->ac:Ldhj;

    invoke-interface {p1, v0}, Ldhi;->l(Ldhj;)Z

    move-result p1

    if-eq v5, p1, :cond_0

    return-object v2

    :cond_0
    return-object v3

    :pswitch_3
    sget-object v0, Lgzd;->a:Ljava/lang/Integer;

    sget-object v0, Ldhq;->ac:Ldhj;

    invoke-interface {p1, v0}, Ldhi;->l(Ldhj;)Z

    move-result p1

    if-eq v5, p1, :cond_1

    return-object v2

    :cond_1
    return-object v3

    :pswitch_4
    sget-object v0, Lgzd;->a:Ljava/lang/Integer;

    sget-object v0, Ldho;->bQ:Ldhj;

    invoke-interface {p1, v0}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Ldho;->bR:Ldhj;

    invoke-interface {p1, v0}, Ldhi;->l(Ldhj;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_0

    :cond_2
    :goto_0
    return-object v6

    :pswitch_5
    sget-object v0, Lgzd;->a:Ljava/lang/Integer;

    sget-object v0, Ldho;->bQ:Ldhj;

    invoke-interface {p1, v0}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Ldho;->bR:Ldhj;

    invoke-interface {p1, v0}, Ldhi;->l(Ldhj;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {v1}, Ljhp;->at(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    :cond_3
    invoke-static {v5}, Ljhp;->at(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_1
    return-object p1

    :pswitch_6
    sget-object v0, Lgzd;->a:Ljava/lang/Integer;

    sget-object v0, Ldho;->bj:Ldhj;

    invoke-interface {p1, v0}, Ldhi;->l(Ldhj;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_7
    sget-object v0, Lgzd;->a:Ljava/lang/Integer;

    sget-object v0, Ldhz;->a:Ldhj;

    invoke-interface {p1, v0}, Ldhi;->l(Ldhj;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    move-object v4, v6

    :goto_2
    return-object v4

    :cond_5
    move-object v4, v6

    :goto_3
    return-object v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
