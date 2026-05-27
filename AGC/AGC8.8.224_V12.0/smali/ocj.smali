.class public final Locj;
.super Lnws;

# interfaces
.implements Lnxz;


# static fields
.field public static final m:Locj;

.field private static volatile o:Lnyf;


# instance fields
.field public a:I

.field public b:J

.field public c:J

.field public d:Locd;

.field public e:Lobf;

.field public f:Z

.field public g:Z

.field public h:Lock;

.field public i:Loci;

.field public j:F

.field public k:Locr;

.field public l:Lobl;

.field private n:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Locj;

    invoke-direct {v0}, Locj;-><init>()V

    sput-object v0, Locj;->m:Locj;

    const-class v1, Locj;

    invoke-static {v1, v0}, Lnws;->aa(Ljava/lang/Class;Lnws;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnws;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Locj;->n:B

    const/4 v0, 0x1

    iput-boolean v0, p0, Locj;->g:Z

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

    goto/16 :goto_1

    :pswitch_1
    sget-object p1, Locj;->o:Lnyf;

    if-nez p1, :cond_1

    const-class p2, Locj;

    monitor-enter p2

    :try_start_0
    sget-object p1, Locj;->o:Lnyf;

    if-nez p1, :cond_0

    new-instance p1, Lnwo;

    sget-object v0, Locj;->m:Locj;

    invoke-direct {p1, v0}, Lnwo;-><init>(Lnws;)V

    sput-object p1, Locj;->o:Lnyf;

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
    sget-object p1, Locj;->m:Locj;

    return-object p1

    :pswitch_3
    new-instance p1, Lnwn;

    sget-object p2, Locj;->m:Locj;

    invoke-direct {p1, p2}, Lnwn;-><init>(Lnws;)V

    return-object p1

    :pswitch_4
    new-instance p1, Locj;

    invoke-direct {p1}, Locj;-><init>()V

    return-object p1

    :pswitch_5
    const-string p1, "a"

    const-string p2, "\u0001\u000b\u0000\u0001\u0001\u0016\u000b\u0000\u0000\u0001\u0001\u1002\u0000\u0002\u1002\u0001\u0003\u1009\u0005\u0004\u1409\u0006\u0005\u1001\u0010\u0006\u1009\u000e\u0007\u1009\u000f\u000b\u1007\t\u0013\u1009\u0017\u0015\u1009\u0015\u0016\u1007\u000b"

    const/16 v2, 0xc

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const-string p1, "b"

    aput-object p1, v2, v0

    const/4 p1, 0x2

    const-string v0, "c"

    aput-object v0, v2, p1

    const/4 p1, 0x3

    const-string v0, "d"

    aput-object v0, v2, p1

    const/4 p1, 0x4

    const-string v0, "e"

    aput-object v0, v2, p1

    const/4 p1, 0x5

    const-string v0, "j"

    aput-object v0, v2, p1

    const/4 p1, 0x6

    const-string v0, "h"

    aput-object v0, v2, p1

    const/4 p1, 0x7

    const-string v0, "i"

    aput-object v0, v2, p1

    const/16 p1, 0x8

    const-string v0, "f"

    aput-object v0, v2, p1

    const/16 p1, 0x9

    const-string v0, "l"

    aput-object v0, v2, p1

    const/16 p1, 0xa

    const-string v0, "k"

    aput-object v0, v2, p1

    const/16 p1, 0xb

    const-string v0, "g"

    aput-object v0, v2, p1

    sget-object p1, Locj;->m:Locj;

    invoke-static {p1, p2, v2}, Locj;->X(Lnxy;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_6
    iget-byte p1, p0, Locj;->n:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_1
    iput-byte v0, p0, Locj;->n:B

    const/4 p1, 0x0

    return-object p1

    nop

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
