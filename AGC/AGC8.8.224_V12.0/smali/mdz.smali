.class public final Lmdz;
.super Lnwq;

# interfaces
.implements Lnxz;


# static fields
.field public static final f:Lmdz;

.field private static volatile k:Lnyf;


# instance fields
.field public a:I

.field public b:Lmej;

.field public c:Lmeq;

.field public d:Lmet;

.field public e:Lmdk;

.field private g:Lnvb;

.field private h:Lobx;

.field private i:Lmdt;

.field private j:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lmdz;

    invoke-direct {v0}, Lmdz;-><init>()V

    sput-object v0, Lmdz;->f:Lmdz;

    const-class v1, Lmdz;

    invoke-static {v1, v0}, Lnws;->aa(Ljava/lang/Class;Lnws;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnwq;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lmdz;->j:B

    sget-object v0, Lnyi;->b:Lnyi;

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
    sget-object p1, Lmdz;->k:Lnyf;

    if-nez p1, :cond_1

    const-class p2, Lmdz;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lmdz;->k:Lnyf;

    if-nez p1, :cond_0

    new-instance p1, Lnwo;

    sget-object v0, Lmdz;->f:Lmdz;

    invoke-direct {p1, v0}, Lnwo;-><init>(Lnws;)V

    sput-object p1, Lmdz;->k:Lnyf;

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
    sget-object p1, Lmdz;->f:Lmdz;

    return-object p1

    :pswitch_3
    new-instance p1, Lnwp;

    sget-object p2, Lmdz;->f:Lmdz;

    invoke-direct {p1, p2}, Lnwp;-><init>(Lnwq;)V

    return-object p1

    :pswitch_4
    new-instance p1, Lmdz;

    invoke-direct {p1}, Lmdz;-><init>()V

    return-object p1

    :pswitch_5
    const-string p1, "a"

    const-string p2, "\u0001\u0007\u0000\u0001\u0002\u0015\u0007\u0000\u0000\u0004\u0002\u1009\u0001\u0004\u1009\u0003\u0008\u1409\u0007\n\u1009\t\u000b\u1409\n\u0013\u1409\u0011\u0015\u1409\u0013"

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const-string p1, "b"

    aput-object p1, v2, v0

    const/4 p1, 0x2

    const-string v0, "c"

    aput-object v0, v2, p1

    const/4 p1, 0x3

    const-string v0, "g"

    aput-object v0, v2, p1

    const/4 p1, 0x4

    const-string v0, "d"

    aput-object v0, v2, p1

    const/4 p1, 0x5

    const-string v0, "e"

    aput-object v0, v2, p1

    const/4 p1, 0x6

    const-string v0, "h"

    aput-object v0, v2, p1

    const/4 p1, 0x7

    const-string v0, "i"

    aput-object v0, v2, p1

    sget-object p1, Lmdz;->f:Lmdz;

    invoke-static {p1, p2, v2}, Lmdz;->X(Lnxy;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_6
    iget-byte p1, p0, Lmdz;->j:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_1
    iput-byte v0, p0, Lmdz;->j:B

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
