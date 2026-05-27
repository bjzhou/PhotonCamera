.class public final Loga;
.super Lnwq;

# interfaces
.implements Lnxz;


# static fields
.field public static final i:Loga;

.field private static volatile k:Lnyf;


# instance fields
.field public a:I

.field public b:J

.field public c:J

.field public d:I

.field public e:Lnvt;

.field public f:J

.field public g:Z

.field public h:Ljava/lang/String;

.field private j:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Loga;

    invoke-direct {v0}, Loga;-><init>()V

    sput-object v0, Loga;->i:Loga;

    const-class v1, Loga;

    invoke-static {v1, v0}, Lnws;->aa(Ljava/lang/Class;Lnws;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lnwq;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Loga;->j:B

    sget-object v0, Lnyi;->b:Lnyi;

    sget-object v0, Lnvt;->b:Lnvt;

    sget-object v0, Lnvt;->b:Lnvt;

    iput-object v0, p0, Loga;->e:Lnvt;

    const-wide/32 v0, 0x2bf20

    iput-wide v0, p0, Loga;->f:J

    sget-object v0, Lnwt;->b:Lnwt;

    const-string v0, ""

    iput-object v0, p0, Loga;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    if-nez p2, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :pswitch_1
    sget-object p1, Loga;->k:Lnyf;

    if-nez p1, :cond_1

    const-class p2, Loga;

    monitor-enter p2

    :try_start_0
    sget-object p1, Loga;->k:Lnyf;

    if-nez p1, :cond_0

    new-instance p1, Lnwo;

    sget-object v0, Loga;->i:Loga;

    invoke-direct {p1, v0}, Lnwo;-><init>(Lnws;)V

    sput-object p1, Loga;->k:Lnyf;

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
    sget-object p1, Loga;->i:Loga;

    return-object p1

    :pswitch_3
    new-instance p1, Lnwp;

    sget-object p2, Loga;->i:Loga;

    invoke-direct {p1, p2}, Lnwp;-><init>(Lnwq;)V

    return-object p1

    :pswitch_4
    new-instance p1, Loga;

    invoke-direct {p1}, Loga;-><init>()V

    return-object p1

    :pswitch_5
    const-string p1, "a"

    const-string p2, "\u0001\u0007\u0000\u0001\u0001\u001c\u0007\u0000\u0000\u0000\u0001\u1002\u0000\u0006\u100a\u000b\u000b\u1004\u0005\u000f\u1010\u0011\u0011\u1002\u0001\u0019\u1007\u0017\u001c\u1008\u0018"

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const-string p1, "b"

    aput-object p1, v2, v0

    const/4 p1, 0x2

    const-string v0, "e"

    aput-object v0, v2, p1

    const/4 p1, 0x3

    const-string v0, "d"

    aput-object v0, v2, p1

    const/4 p1, 0x4

    const-string v0, "f"

    aput-object v0, v2, p1

    const/4 p1, 0x5

    const-string v0, "c"

    aput-object v0, v2, p1

    const/4 p1, 0x6

    const-string v0, "g"

    aput-object v0, v2, p1

    const/4 p1, 0x7

    const-string v0, "h"

    aput-object v0, v2, p1

    sget-object p1, Loga;->i:Loga;

    invoke-static {p1, p2, v2}, Loga;->X(Lnxy;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_6
    iget-byte p1, p0, Loga;->j:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_1
    iput-byte v0, p0, Loga;->j:B

    const/4 p1, 0x0

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
