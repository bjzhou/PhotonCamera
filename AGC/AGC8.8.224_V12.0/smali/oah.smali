.class public final Loah;
.super Lnwq;

# interfaces
.implements Lnxz;


# static fields
.field public static final n:Loah;

.field private static volatile p:Lnyf;


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:I

.field public d:J

.field public e:J

.field public f:J

.field public g:Ljava/lang/String;

.field public h:I

.field public i:I

.field public j:Loaf;

.field public k:Lnwz;

.field public m:Ljava/lang/String;

.field private o:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Loah;

    invoke-direct {v0}, Loah;-><init>()V

    sput-object v0, Loah;->n:Loah;

    const-class v1, Loah;

    invoke-static {v1, v0}, Lnws;->aa(Ljava/lang/Class;Lnws;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lnwq;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Loah;->o:B

    const-string v0, ""

    iput-object v0, p0, Loah;->b:Ljava/lang/String;

    iput-object v0, p0, Loah;->g:Ljava/lang/String;

    sget-object v1, Lnxp;->b:Lnxp;

    iput-object v1, p0, Loah;->k:Lnwz;

    iput-object v0, p0, Loah;->m:Ljava/lang/String;

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
    sget-object p1, Loah;->p:Lnyf;

    if-nez p1, :cond_1

    const-class p2, Loah;

    monitor-enter p2

    :try_start_0
    sget-object p1, Loah;->p:Lnyf;

    if-nez p1, :cond_0

    new-instance p1, Lnwo;

    sget-object v0, Loah;->n:Loah;

    invoke-direct {p1, v0}, Lnwo;-><init>(Lnws;)V

    sput-object p1, Loah;->p:Lnyf;

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
    sget-object p1, Loah;->n:Loah;

    return-object p1

    :pswitch_3
    new-instance p1, Lnwp;

    sget-object p2, Loah;->n:Loah;

    invoke-direct {p1, p2}, Lnwp;-><init>(Lnwq;)V

    return-object p1

    :pswitch_4
    new-instance p1, Loah;

    invoke-direct {p1}, Loah;-><init>()V

    return-object p1

    :pswitch_5
    const-string p1, "a"

    const-string p2, "\u0001\u000b\u0000\u0001\u0001\r\u000b\u0000\u0001\u0000\u0001\u1008\u0000\u0002\u1002\u0002\u0003\u1002\u0003\u0004\u1002\u0004\u0005\u1008\u0005\u0006\u100c\u0006\u0007\u100c\u0007\t\u0014\u000b\u1008\u000b\u000c\u1004\u0001\r\u1009\t"

    const/16 v2, 0xe

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const-string p1, "b"

    aput-object p1, v2, v0

    const/4 p1, 0x2

    const-string v0, "d"

    aput-object v0, v2, p1

    const/4 p1, 0x3

    const-string v0, "e"

    aput-object v0, v2, p1

    const/4 p1, 0x4

    const-string v0, "f"

    aput-object v0, v2, p1

    const/4 p1, 0x5

    const-string v0, "g"

    aput-object v0, v2, p1

    const/4 p1, 0x6

    const-string v0, "h"

    aput-object v0, v2, p1

    const/4 p1, 0x7

    sget-object v0, Lnzw;->f:Lnww;

    aput-object v0, v2, p1

    const/16 p1, 0x8

    const-string v0, "i"

    aput-object v0, v2, p1

    const/16 p1, 0x9

    sget-object v0, Lnzw;->e:Lnww;

    aput-object v0, v2, p1

    const/16 p1, 0xa

    const-string v0, "k"

    aput-object v0, v2, p1

    const/16 p1, 0xb

    const-string v0, "m"

    aput-object v0, v2, p1

    const/16 p1, 0xc

    const-string v0, "c"

    aput-object v0, v2, p1

    const/16 p1, 0xd

    const-string v0, "j"

    aput-object v0, v2, p1

    sget-object p1, Loah;->n:Loah;

    invoke-static {p1, p2, v2}, Loah;->X(Lnxy;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_6
    iget-byte p1, p0, Loah;->o:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_1
    iput-byte v0, p0, Loah;->o:B

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

.method public final f()V
    .locals 2

    iget-object v0, p0, Loah;->k:Lnwz;

    invoke-interface {v0}, Lnwz;->c()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lnws;->T(Lnwz;)Lnwz;

    move-result-object v0

    iput-object v0, p0, Loah;->k:Lnwz;

    :cond_0
    return-void
.end method
