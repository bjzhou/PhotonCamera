.class public final Lkwi;
.super Lnws;

# interfaces
.implements Lnxz;


# static fields
.field public static final h:Lkwi;

.field private static volatile i:Lnyf;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lnxa;

.field public c:Lnxa;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkwi;

    invoke-direct {v0}, Lkwi;-><init>()V

    sput-object v0, Lkwi;->h:Lkwi;

    const-class v1, Lkwi;

    invoke-static {v1, v0}, Lnws;->aa(Ljava/lang/Class;Lnws;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lnws;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lkwi;->a:Ljava/lang/String;

    sget-object v1, Lnyi;->b:Lnyi;

    iput-object v1, p0, Lkwi;->b:Lnxa;

    iput-object v1, p0, Lkwi;->c:Lnxa;

    iput-object v0, p0, Lkwi;->d:Ljava/lang/String;

    iput-object v0, p0, Lkwi;->e:Ljava/lang/String;

    iput-object v0, p0, Lkwi;->f:Ljava/lang/String;

    iput-object v0, p0, Lkwi;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    :pswitch_1
    sget-object p1, Lkwi;->i:Lnyf;

    if-nez p1, :cond_1

    const-class p2, Lkwi;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lkwi;->i:Lnyf;

    if-nez p1, :cond_0

    new-instance p1, Lnwo;

    sget-object v0, Lkwi;->h:Lkwi;

    invoke-direct {p1, v0}, Lnwo;-><init>(Lnws;)V

    sput-object p1, Lkwi;->i:Lnyf;

    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    :pswitch_2
    sget-object p1, Lkwi;->h:Lkwi;

    return-object p1

    :pswitch_3
    new-instance p1, Lnwn;

    sget-object p2, Lkwi;->h:Lkwi;

    invoke-direct {p1, p2}, Lnwn;-><init>(Lnws;)V

    return-object p1

    :pswitch_4
    new-instance p1, Lkwi;

    invoke-direct {p1}, Lkwi;-><init>()V

    return-object p1

    :pswitch_5
    const-string p1, "a"

    const-string v0, "\u0000\u0007\u0000\u0000\u0001\u0007\u0007\u0000\u0002\u0000\u0001\u0208\u0002\u021a\u0003\u021a\u0004\u0208\u0005\u0208\u0006\u0208\u0007\u0208"

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "b"

    aput-object p1, v1, p2

    const/4 p1, 0x2

    const-string p2, "c"

    aput-object p2, v1, p1

    const/4 p1, 0x3

    const-string p2, "d"

    aput-object p2, v1, p1

    const/4 p1, 0x4

    const-string p2, "e"

    aput-object p2, v1, p1

    const/4 p1, 0x5

    const-string p2, "f"

    aput-object p2, v1, p1

    const/4 p1, 0x6

    const-string p2, "g"

    aput-object p2, v1, p1

    sget-object p1, Lkwi;->h:Lkwi;

    invoke-static {p1, v0, v1}, Lkwi;->X(Lnxy;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_6
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
