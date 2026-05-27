.class public final Lmdr;
.super Lnws;

# interfaces
.implements Lnxz;


# static fields
.field public static final e:Lmdr;

.field private static volatile g:Lnyf;


# instance fields
.field public a:I

.field public b:J

.field public c:J

.field public d:J

.field private f:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lmdr;

    invoke-direct {v0}, Lmdr;-><init>()V

    sput-object v0, Lmdr;->e:Lmdr;

    const-class v1, Lmdr;

    invoke-static {v1, v0}, Lnws;->aa(Ljava/lang/Class;Lnws;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnws;-><init>()V

    return-void
.end method

.method public static synthetic b(Lmdr;)V
    .locals 1

    iget v0, p0, Lmdr;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmdr;->a:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lmdr;->f:F

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
    sget-object p1, Lmdr;->g:Lnyf;

    if-nez p1, :cond_1

    const-class p2, Lmdr;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lmdr;->g:Lnyf;

    if-nez p1, :cond_0

    new-instance p1, Lnwo;

    sget-object v0, Lmdr;->e:Lmdr;

    invoke-direct {p1, v0}, Lnwo;-><init>(Lnws;)V

    sput-object p1, Lmdr;->g:Lnyf;

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
    sget-object p1, Lmdr;->e:Lmdr;

    return-object p1

    :pswitch_3
    new-instance p1, Lnwn;

    sget-object p2, Lmdr;->e:Lmdr;

    invoke-direct {p1, p2}, Lnwn;-><init>(Lnws;)V

    return-object p1

    :pswitch_4
    new-instance p1, Lmdr;

    invoke-direct {p1}, Lmdr;-><init>()V

    return-object p1

    :pswitch_5
    const-string p1, "a"

    const-string v0, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u1001\u0000\u0002\u1002\u0001\u0003\u1002\u0002\u0004\u1002\u0003"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "f"

    aput-object p1, v1, p2

    const/4 p1, 0x2

    const-string p2, "b"

    aput-object p2, v1, p1

    const/4 p1, 0x3

    const-string p2, "c"

    aput-object p2, v1, p1

    const/4 p1, 0x4

    const-string p2, "d"

    aput-object p2, v1, p1

    sget-object p1, Lmdr;->e:Lmdr;

    invoke-static {p1, v0, v1}, Lmdr;->X(Lnxy;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

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
