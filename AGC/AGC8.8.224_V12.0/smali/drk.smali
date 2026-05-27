.class public final synthetic Ldrk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic a:Ldrk;

.field public static final synthetic b:Ldrk;

.field public static final synthetic c:Ldrk;

.field public static final synthetic d:Ldrk;

.field public static final synthetic e:Ldrk;

.field public static final synthetic f:Ldrk;

.field public static final synthetic g:Ldrk;

.field public static final synthetic h:Ldrk;

.field public static final synthetic i:Ldrk;

.field public static final synthetic j:Ldrk;


# instance fields
.field private final synthetic k:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Ldrk;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Ldrk;-><init>(I)V

    sput-object v0, Ldrk;->j:Ldrk;

    new-instance v0, Ldrk;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ldrk;-><init>(I)V

    sput-object v0, Ldrk;->i:Ldrk;

    new-instance v0, Ldrk;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ldrk;-><init>(I)V

    sput-object v0, Ldrk;->h:Ldrk;

    new-instance v0, Ldrk;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ldrk;-><init>(I)V

    sput-object v0, Ldrk;->g:Ldrk;

    new-instance v0, Ldrk;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ldrk;-><init>(I)V

    sput-object v0, Ldrk;->f:Ldrk;

    new-instance v0, Ldrk;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ldrk;-><init>(I)V

    sput-object v0, Ldrk;->e:Ldrk;

    new-instance v0, Ldrk;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ldrk;-><init>(I)V

    sput-object v0, Ldrk;->d:Ldrk;

    new-instance v0, Ldrk;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ldrk;-><init>(I)V

    sput-object v0, Ldrk;->c:Ldrk;

    new-instance v0, Ldrk;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ldrk;-><init>(I)V

    sput-object v0, Ldrk;->b:Ldrk;

    new-instance v0, Ldrk;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ldrk;-><init>(I)V

    sput-object v0, Ldrk;->a:Ldrk;

    return-void
.end method

.method private synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Ldrk;->k:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Ldrk;->k:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Llhz;

    invoke-direct {v0}, Llhz;-><init>()V

    return-object v0

    :pswitch_0
    invoke-static {}, Lmwn;->D()Lmwl;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-static {}, Lmvv;->e()Lmvq;

    move-result-object v0

    return-object v0

    :pswitch_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :pswitch_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :pswitch_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :pswitch_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :pswitch_6
    sget-object v0, Lmpx;->a:Lmpx;

    return-object v0

    :pswitch_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :pswitch_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
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
