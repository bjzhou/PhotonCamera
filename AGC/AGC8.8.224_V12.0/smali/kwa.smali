.class public final Lkwa;
.super Lnws;

# interfaces
.implements Lnxz;


# static fields
.field public static final L:Lkwa;

.field private static volatile M:Lnyf;


# instance fields
.field public A:Z

.field public B:Z

.field public C:Lkwo;

.field public D:Z

.field public E:Lnvt;

.field public F:Z

.field public G:Lkwe;

.field public H:Z

.field public I:Z

.field public J:Z

.field public K:J

.field public a:I

.field public b:I

.field public c:Z

.field public d:Z

.field public e:Lkwb;

.field public f:Z

.field public g:Z

.field public h:I

.field public i:Lkwd;

.field public j:I

.field public k:Z

.field public l:I

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Lnxa;

.field public q:I

.field public r:Lkwc;

.field public s:I

.field public t:Z

.field public u:I

.field public v:Z

.field public w:Z

.field public x:Z

.field public y:J

.field public z:Lkvz;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkwa;

    invoke-direct {v0}, Lkwa;-><init>()V

    sput-object v0, Lkwa;->L:Lkwa;

    const-class v1, Lkwa;

    invoke-static {v1, v0}, Lnws;->aa(Ljava/lang/Class;Lnws;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lnws;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lkwa;->j:I

    const/4 v1, 0x3

    iput v1, p0, Lkwa;->l:I

    sget-object v1, Lnyi;->b:Lnyi;

    iput-object v1, p0, Lkwa;->p:Lnxa;

    iput v0, p0, Lkwa;->s:I

    iput-boolean v0, p0, Lkwa;->w:Z

    iput-boolean v0, p0, Lkwa;->A:Z

    sget-object v0, Lnvt;->b:Lnvt;

    iput-object v0, p0, Lkwa;->E:Lnvt;

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
    sget-object p1, Lkwa;->M:Lnyf;

    if-nez p1, :cond_1

    const-class p2, Lkwa;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lkwa;->M:Lnyf;

    if-nez p1, :cond_0

    new-instance p1, Lnwo;

    sget-object v0, Lkwa;->L:Lkwa;

    invoke-direct {p1, v0}, Lnwo;-><init>(Lnws;)V

    sput-object p1, Lkwa;->M:Lnyf;

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
    sget-object p1, Lkwa;->L:Lkwa;

    return-object p1

    :pswitch_3
    new-instance p1, Lnwn;

    sget-object p2, Lkwa;->L:Lkwa;

    invoke-direct {p1, p2}, Lnwn;-><init>(Lnws;)V

    return-object p1

    :pswitch_4
    new-instance p1, Lkwa;

    invoke-direct {p1}, Lkwa;-><init>()V

    return-object p1

    :pswitch_5
    const-string p1, "a"

    const-string v0, "\u0001#\u0000\u0002\u0001%#\u0000\u0001\u0000\u0001\u1007\u0000\u0002\u1007\u0001\u0003\u1009\u0002\u0004\u1007\u0003\u0005\u1007\u0004\u0007\u1004\u0005\u0008\u1009\u0006\t\u100c\u0007\n\u1007\u0008\u000b\u1004\t\u000c\u1007\n\u000e\u1007\u000b\u000f\u1007\u000c\u0010\u001b\u0011\u100c\r\u0012\u1009\u000e\u0013\u100c\u000f\u0014\u1007\u0010\u0015\u100c\u0011\u0016\u1007\u0012\u0017\u1007\u0013\u0018\u1007\u0014\u0019\u1003\u0015\u001a\u1009\u0016\u001b\u1007\u0017\u001c\u1007\u0018\u001d\u1009\u0019\u001e\u1007\u001a\u001f\u100a\u001b \u1007\u001c!\u1009\u001d\"\u1007\u001e#\u1007\u001f$\u1003!%\u1007 "

    const/16 v1, 0x2a

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

    const/4 p1, 0x7

    const-string p2, "h"

    aput-object p2, v1, p1

    const/16 p1, 0x8

    const-string p2, "i"

    aput-object p2, v1, p1

    const/16 p1, 0x9

    const-string p2, "j"

    aput-object p2, v1, p1

    const/16 p1, 0xa

    sget-object p2, Lkuf;->f:Lnww;

    aput-object p2, v1, p1

    const/16 p1, 0xb

    const-string p2, "k"

    aput-object p2, v1, p1

    const/16 p1, 0xc

    const-string p2, "l"

    aput-object p2, v1, p1

    const/16 p1, 0xd

    const-string p2, "m"

    aput-object p2, v1, p1

    const/16 p1, 0xe

    const-string p2, "n"

    aput-object p2, v1, p1

    const/16 p1, 0xf

    const-string p2, "o"

    aput-object p2, v1, p1

    const/16 p1, 0x10

    const-string p2, "p"

    aput-object p2, v1, p1

    const/16 p1, 0x11

    const-class p2, Lkwf;

    aput-object p2, v1, p1

    const/16 p1, 0x12

    const-string p2, "q"

    aput-object p2, v1, p1

    sget-object p1, Lkuf;->e:Lnww;

    const/16 p2, 0x13

    aput-object p1, v1, p2

    const/16 p1, 0x14

    const-string p2, "r"

    aput-object p2, v1, p1

    const/16 p1, 0x15

    const-string p2, "s"

    aput-object p2, v1, p1

    const/16 p1, 0x16

    sget-object p2, Lkuf;->c:Lnww;

    aput-object p2, v1, p1

    const/16 p1, 0x17

    const-string p2, "t"

    aput-object p2, v1, p1

    const/16 p1, 0x18

    const-string p2, "u"

    aput-object p2, v1, p1

    const/16 p1, 0x19

    sget-object p2, Lkuf;->d:Lnww;

    aput-object p2, v1, p1

    const/16 p1, 0x1a

    const-string p2, "v"

    aput-object p2, v1, p1

    const/16 p1, 0x1b

    const-string p2, "w"

    aput-object p2, v1, p1

    const/16 p1, 0x1c

    const-string p2, "x"

    aput-object p2, v1, p1

    const/16 p1, 0x1d

    const-string p2, "y"

    aput-object p2, v1, p1

    const/16 p1, 0x1e

    const-string p2, "z"

    aput-object p2, v1, p1

    const/16 p1, 0x1f

    const-string p2, "A"

    aput-object p2, v1, p1

    const/16 p1, 0x20

    const-string p2, "B"

    aput-object p2, v1, p1

    const/16 p1, 0x21

    const-string p2, "C"

    aput-object p2, v1, p1

    const/16 p1, 0x22

    const-string p2, "D"

    aput-object p2, v1, p1

    const/16 p1, 0x23

    const-string p2, "E"

    aput-object p2, v1, p1

    const/16 p1, 0x24

    const-string p2, "F"

    aput-object p2, v1, p1

    const/16 p1, 0x25

    const-string p2, "G"

    aput-object p2, v1, p1

    const/16 p1, 0x26

    const-string p2, "H"

    aput-object p2, v1, p1

    const/16 p1, 0x27

    const-string p2, "I"

    aput-object p2, v1, p1

    const/16 p1, 0x28

    const-string p2, "K"

    aput-object p2, v1, p1

    const/16 p1, 0x29

    const-string p2, "J"

    aput-object p2, v1, p1

    sget-object p1, Lkwa;->L:Lkwa;

    invoke-static {p1, v0, v1}, Lkwa;->X(Lnxy;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

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
