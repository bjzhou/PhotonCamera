.class public final Lmea;
.super Lnwq;

# interfaces
.implements Lnxz;


# static fields
.field public static final k:Lmea;

.field private static volatile p:Lnyf;


# instance fields
.field public a:I

.field public b:Lmdo;

.field public c:Lmei;

.field public d:Lnxa;

.field public e:Lmeo;

.field public f:Z

.field public g:Lmeb;

.field public h:I

.field public i:Lnzu;

.field public j:Ljava/lang/String;

.field private m:Lmec;

.field private n:Lluf;

.field private o:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lmea;

    invoke-direct {v0}, Lmea;-><init>()V

    sput-object v0, Lmea;->k:Lmea;

    const-class v1, Lmea;

    invoke-static {v1, v0}, Lnws;->aa(Ljava/lang/Class;Lnws;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnwq;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lmea;->o:B

    sget-object v0, Lnyi;->b:Lnyi;

    iput-object v0, p0, Lmea;->d:Lnxa;

    const-string v0, ""

    iput-object v0, p0, Lmea;->j:Ljava/lang/String;

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
    sget-object p1, Lmea;->p:Lnyf;

    if-nez p1, :cond_1

    const-class p2, Lmea;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lmea;->p:Lnyf;

    if-nez p1, :cond_0

    new-instance p1, Lnwo;

    sget-object v0, Lmea;->k:Lmea;

    invoke-direct {p1, v0}, Lnwo;-><init>(Lnws;)V

    sput-object p1, Lmea;->p:Lnyf;

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
    sget-object p1, Lmea;->k:Lmea;

    return-object p1

    :pswitch_3
    new-instance p1, Lnwp;

    sget-object p2, Lmea;->k:Lmea;

    invoke-direct {p1, p2}, Lnwp;-><init>(Lnwq;)V

    return-object p1

    :pswitch_4
    new-instance p1, Lmea;

    invoke-direct {p1}, Lmea;-><init>()V

    return-object p1

    :pswitch_5
    const-string p1, "a"

    const-string p2, "\u0001\u000b\u0000\u0001\u0003?\u000b\u0000\u0001\u0002\u0003\u1009\u0001\u0008\u1009\u000f\u000f\u1009\u001f\u0014\u1409\u0003&\u1409\u0008\'\u1009\u0015-\u100c\u0014.\u1007\n8\u1008\u0017>\u1009\u0000?\u001b"

    const/16 v2, 0xe

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const-string p1, "c"

    aput-object p1, v2, v0

    const/4 p1, 0x2

    const-string v0, "g"

    aput-object v0, v2, p1

    const/4 p1, 0x3

    const-string v0, "n"

    aput-object v0, v2, p1

    const/4 p1, 0x4

    const-string v0, "e"

    aput-object v0, v2, p1

    const/4 p1, 0x5

    const-string v0, "m"

    aput-object v0, v2, p1

    const/4 p1, 0x6

    const-string v0, "i"

    aput-object v0, v2, p1

    const/4 p1, 0x7

    const-string v0, "h"

    aput-object v0, v2, p1

    const/16 p1, 0x8

    sget-object v0, Lkuf;->h:Lnww;

    aput-object v0, v2, p1

    const/16 p1, 0x9

    const-string v0, "f"

    aput-object v0, v2, p1

    const/16 p1, 0xa

    const-string v0, "j"

    aput-object v0, v2, p1

    const/16 p1, 0xb

    const-string v0, "b"

    aput-object v0, v2, p1

    const/16 p1, 0xc

    const-string v0, "d"

    aput-object v0, v2, p1

    const/16 p1, 0xd

    const-class v0, Lpay;

    aput-object v0, v2, p1

    sget-object p1, Lmea;->k:Lmea;

    invoke-static {p1, p2, v2}, Lmea;->X(Lnxy;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_6
    iget-byte p1, p0, Lmea;->o:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_1
    iput-byte v0, p0, Lmea;->o:B

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
