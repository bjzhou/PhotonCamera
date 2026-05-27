.class public final synthetic Lknk;
.super Ljava/lang/Object;

# interfaces
.implements Loiw;


# static fields
.field public static final synthetic a:Lknk;

.field public static final synthetic b:Lknk;

.field public static final synthetic c:Lknk;

.field public static final synthetic d:Lknk;

.field public static final synthetic e:Lknk;

.field public static final synthetic f:Lknk;

.field public static final synthetic g:Lknk;

.field public static final synthetic h:Lknk;

.field public static final synthetic i:Lknk;

.field public static final synthetic j:Lknk;

.field public static final synthetic k:Lknk;

.field public static final synthetic l:Lknk;

.field public static final synthetic m:Lknk;


# instance fields
.field private final synthetic n:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lknk;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lknk;-><init>(I)V

    sput-object v0, Lknk;->m:Lknk;

    new-instance v0, Lknk;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lknk;-><init>(I)V

    sput-object v0, Lknk;->l:Lknk;

    new-instance v0, Lknk;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lknk;-><init>(I)V

    sput-object v0, Lknk;->k:Lknk;

    new-instance v0, Lknk;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lknk;-><init>(I)V

    sput-object v0, Lknk;->j:Lknk;

    new-instance v0, Lknk;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lknk;-><init>(I)V

    sput-object v0, Lknk;->i:Lknk;

    new-instance v0, Lknk;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lknk;-><init>(I)V

    sput-object v0, Lknk;->h:Lknk;

    new-instance v0, Lknk;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lknk;-><init>(I)V

    sput-object v0, Lknk;->g:Lknk;

    new-instance v0, Lknk;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lknk;-><init>(I)V

    sput-object v0, Lknk;->f:Lknk;

    new-instance v0, Lknk;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lknk;-><init>(I)V

    sput-object v0, Lknk;->e:Lknk;

    new-instance v0, Lknk;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lknk;-><init>(I)V

    sput-object v0, Lknk;->d:Lknk;

    new-instance v0, Lknk;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lknk;-><init>(I)V

    sput-object v0, Lknk;->c:Lknk;

    new-instance v0, Lknk;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lknk;-><init>(I)V

    sput-object v0, Lknk;->b:Lknk;

    new-instance v0, Lknk;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lknk;-><init>(I)V

    sput-object v0, Lknk;->a:Lknk;

    return-void
.end method

.method private synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lknk;->n:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lknk;->n:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Llkn;->c()Llkm;

    move-result-object v0

    invoke-virtual {v0, v2}, Llkm;->b(Z)V

    invoke-virtual {v0}, Llkm;->a()Llkn;

    move-result-object v0

    return-object v0

    :pswitch_0
    sget-object v0, Lmpx;->a:Lmpx;

    new-instance v2, Llkj;

    invoke-direct {v2, v1}, Llkj;-><init>([C)V

    new-instance v3, Llmi;

    invoke-direct {v3, v2, v0, v1, v1}, Llmi;-><init>(Llkj;Lmqp;[B[B)V

    return-object v3

    :pswitch_1
    new-instance v0, Llip;

    invoke-direct {v0, v1}, Llip;-><init>([B)V

    return-object v0

    :pswitch_2
    invoke-static {}, Llmf;->c()Llme;

    move-result-object v0

    invoke-virtual {v0, v2}, Llme;->b(Z)V

    invoke-virtual {v0}, Llme;->a()Llmf;

    move-result-object v0

    return-object v0

    :pswitch_3
    invoke-static {}, Llml;->c()Llmk;

    move-result-object v0

    invoke-virtual {v0, v2}, Llmk;->b(Z)V

    invoke-virtual {v0}, Llmk;->a()Llml;

    move-result-object v0

    return-object v0

    :pswitch_4
    sget-object v0, Lmpx;->a:Lmpx;

    new-instance v1, Lllb;

    invoke-direct {v1, v0}, Lllb;-><init>(Lmqp;)V

    const/4 v0, 0x1

    const-string v2, "only one of auto url auto sanitization and custom url sanitizer can be enabled."

    invoke-static {v0, v2}, Lmoz;->f(ZLjava/lang/Object;)V

    return-object v1

    :pswitch_5
    new-instance v0, Lljn;

    invoke-direct {v0, v1}, Lljn;-><init>([B)V

    return-object v0

    :pswitch_6
    new-instance v0, Llki;

    invoke-direct {v0, v1}, Llki;-><init>([B)V

    return-object v0

    :pswitch_7
    invoke-static {}, Llma;->c()Lllz;

    move-result-object v0

    invoke-virtual {v0, v2}, Lllz;->b(Z)V

    invoke-virtual {v0}, Lllz;->a()Llma;

    move-result-object v0

    return-object v0

    :pswitch_8
    invoke-static {}, Llhn;->c()Llhm;

    move-result-object v0

    invoke-virtual {v0, v2}, Llhm;->b(Z)V

    invoke-virtual {v0}, Llhm;->a()Llhn;

    move-result-object v0

    return-object v0

    :pswitch_9
    invoke-static {}, Lliv;->c()Llme;

    move-result-object v0

    invoke-virtual {v0, v2}, Llme;->d(Z)V

    invoke-virtual {v0}, Llme;->c()Lliv;

    move-result-object v0

    return-object v0

    :pswitch_a
    new-instance v0, Lkng;

    invoke-direct {v0}, Lkng;-><init>()V

    return-object v0

    :pswitch_b
    new-instance v0, Lknl;

    invoke-direct {v0}, Lknl;-><init>()V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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
