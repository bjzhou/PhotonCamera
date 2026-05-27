.class public final Lnsw;
.super Lnws;

# interfaces
.implements Lnxz;


# static fields
.field public static final E:Lnsw;

.field private static volatile G:Lnyf;


# instance fields
.field public A:Lnsq;

.field public B:Lnso;

.field public C:Lnst;

.field public D:Lnwy;

.field private F:I

.field public a:Lnsm;

.field public b:I

.field public c:I

.field public d:Lnwx;

.field public e:Lnwu;

.field public f:I

.field public g:Z

.field public h:I

.field public i:J

.field public j:J

.field public k:J

.field public l:I

.field public m:Lnsv;

.field public n:I

.field public o:Lnsp;

.field public p:Lnsr;

.field public q:Z

.field public r:F

.field public s:Loaz;

.field public t:F

.field public u:F

.field public v:F

.field public w:Lnwx;

.field public x:Lnsu;

.field public y:Lnsn;

.field public z:Lnss;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnsw;

    invoke-direct {v0}, Lnsw;-><init>()V

    sput-object v0, Lnsw;->E:Lnsw;

    const-class v1, Lnsw;

    invoke-static {v1, v0}, Lnws;->aa(Ljava/lang/Class;Lnws;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lnws;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lnsw;->b:I

    iput v0, p0, Lnsw;->c:I

    sget-object v1, Lnwl;->b:Lnwl;

    iput-object v1, p0, Lnsw;->d:Lnwx;

    sget-object v1, Lnvl;->b:Lnvl;

    iput-object v1, p0, Lnsw;->e:Lnwu;

    iput v0, p0, Lnsw;->h:I

    iput v0, p0, Lnsw;->l:I

    const/4 v0, 0x1

    iput v0, p0, Lnsw;->n:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lnsw;->r:F

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lnsw;->u:F

    iput v0, p0, Lnsw;->v:F

    sget-object v0, Lnwl;->b:Lnwl;

    iput-object v0, p0, Lnsw;->w:Lnwx;

    sget-object v0, Lnwt;->b:Lnwt;

    iput-object v0, p0, Lnsw;->D:Lnwy;

    sget-object v0, Lnyi;->b:Lnyi;

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
    sget-object p1, Lnsw;->G:Lnyf;

    if-nez p1, :cond_1

    const-class p2, Lnsw;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lnsw;->G:Lnyf;

    if-nez p1, :cond_0

    new-instance p1, Lnwo;

    sget-object v0, Lnsw;->E:Lnsw;

    invoke-direct {p1, v0}, Lnwo;-><init>(Lnws;)V

    sput-object p1, Lnsw;->G:Lnyf;

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
    sget-object p1, Lnsw;->E:Lnsw;

    return-object p1

    :pswitch_3
    new-instance p1, Lnwn;

    sget-object p2, Lnsw;->E:Lnsw;

    invoke-direct {p1, p2}, Lnwn;-><init>(Lnws;)V

    return-object p1

    :pswitch_4
    new-instance p1, Lnsw;

    invoke-direct {p1}, Lnsw;-><init>()V

    return-object p1

    :pswitch_5
    const-string p1, "F"

    const-string v0, "\u0001\u001e\u0000\u0001\u0001\'\u001e\u0000\u0004\u0000\u0001\u1009\u0001\u0002\u1004\u0002\u0003\u1004\u0003\u0004\u0013\u0005\u0019\u0006\u100c\u0004\u0007\u1007\u0005\u0008\u1004\u0006\t\u1002\u0007\n\u1002\u0008\u000b\u1002\t\u000c\u1004\n\r\u1009\u000b\u000e\u100c\u000c\u000f\u1007\u000f\u0010\u1001\u0010\u0011\u1009\u0011\u0012\u1001\u0012\u0013\u1001\u0013\u0014\u1001\u0014\u0015\u0013\u0016\u1009\u0015\u0017\u1009\u0016\u0018\u1009\u0017\u0019\u1009\u0018\u001a\u1009\u0019\u001b\u1009\u001a\u001c\' \u1009\r\'\u1009\u000e"

    const/16 v1, 0x21

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "a"

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

    const/4 p1, 0x5

    const-string p2, "e"

    aput-object p2, v1, p1

    const/4 p1, 0x6

    const-string p2, "f"

    aput-object p2, v1, p1

    const/4 p1, 0x7

    sget-object p2, Lnkx;->u:Lnww;

    aput-object p2, v1, p1

    const/16 p1, 0x8

    const-string p2, "g"

    aput-object p2, v1, p1

    const/16 p1, 0x9

    const-string p2, "h"

    aput-object p2, v1, p1

    const/16 p1, 0xa

    const-string p2, "i"

    aput-object p2, v1, p1

    const/16 p1, 0xb

    const-string p2, "j"

    aput-object p2, v1, p1

    const/16 p1, 0xc

    const-string p2, "k"

    aput-object p2, v1, p1

    const/16 p1, 0xd

    const-string p2, "l"

    aput-object p2, v1, p1

    const/16 p1, 0xe

    const-string p2, "m"

    aput-object p2, v1, p1

    const/16 p1, 0xf

    const-string p2, "n"

    aput-object p2, v1, p1

    const/16 p1, 0x10

    sget-object p2, Lnkx;->t:Lnww;

    aput-object p2, v1, p1

    const/16 p1, 0x11

    const-string p2, "q"

    aput-object p2, v1, p1

    const/16 p1, 0x12

    const-string p2, "r"

    aput-object p2, v1, p1

    const/16 p1, 0x13

    const-string p2, "s"

    aput-object p2, v1, p1

    const/16 p1, 0x14

    const-string p2, "t"

    aput-object p2, v1, p1

    const/16 p1, 0x15

    const-string p2, "u"

    aput-object p2, v1, p1

    const/16 p1, 0x16

    const-string p2, "v"

    aput-object p2, v1, p1

    const/16 p1, 0x17

    const-string p2, "w"

    aput-object p2, v1, p1

    const/16 p1, 0x18

    const-string p2, "x"

    aput-object p2, v1, p1

    const/16 p1, 0x19

    const-string p2, "y"

    aput-object p2, v1, p1

    const/16 p1, 0x1a

    const-string p2, "z"

    aput-object p2, v1, p1

    const/16 p1, 0x1b

    const-string p2, "A"

    aput-object p2, v1, p1

    const/16 p1, 0x1c

    const-string p2, "B"

    aput-object p2, v1, p1

    const/16 p1, 0x1d

    const-string p2, "C"

    aput-object p2, v1, p1

    const/16 p1, 0x1e

    const-string p2, "D"

    aput-object p2, v1, p1

    const/16 p1, 0x1f

    const-string p2, "o"

    aput-object p2, v1, p1

    const/16 p1, 0x20

    const-string p2, "p"

    aput-object p2, v1, p1

    sget-object p1, Lnsw;->E:Lnsw;

    invoke-static {p1, v0, v1}, Lnsw;->X(Lnxy;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

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
