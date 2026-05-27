.class public final Lnlh;
.super Lnws;

# interfaces
.implements Lnxz;


# static fields
.field public static final j:Lnlh;

.field private static volatile k:Lnyf;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:Z

.field public f:I

.field public g:I

.field public h:I

.field public i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnlh;

    invoke-direct {v0}, Lnlh;-><init>()V

    sput-object v0, Lnlh;->j:Lnlh;

    const-class v1, Lnlh;

    invoke-static {v1, v0}, Lnws;->aa(Ljava/lang/Class;Lnws;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnws;-><init>()V

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
    sget-object p1, Lnlh;->k:Lnyf;

    if-nez p1, :cond_1

    const-class p2, Lnlh;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lnlh;->k:Lnyf;

    if-nez p1, :cond_0

    new-instance p1, Lnwo;

    sget-object v0, Lnlh;->j:Lnlh;

    invoke-direct {p1, v0}, Lnwo;-><init>(Lnws;)V

    sput-object p1, Lnlh;->k:Lnyf;

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
    sget-object p1, Lnlh;->j:Lnlh;

    return-object p1

    :pswitch_3
    new-instance p1, Lnwn;

    sget-object p2, Lnlh;->j:Lnlh;

    invoke-direct {p1, p2}, Lnwn;-><init>(Lnws;)V

    return-object p1

    :pswitch_4
    new-instance p1, Lnlh;

    invoke-direct {p1}, Lnlh;-><init>()V

    return-object p1

    :pswitch_5
    const-string p1, "a"

    const-string v0, "\u0001\u0008\u0000\u0001\u0001\t\u0008\u0000\u0000\u0000\u0001\u1004\u0000\u0002\u1004\u0001\u0003\u1004\u0002\u0004\u1007\u0003\u0006\u100c\u0004\u0007\u100c\u0005\u0008\u100c\u0006\t\u1007\u0007"

    const/16 v1, 0xc

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

    sget-object p2, Lnkx;->k:Lnww;

    aput-object p2, v1, p1

    const/4 p1, 0x7

    const-string p2, "g"

    aput-object p2, v1, p1

    const/16 p1, 0x8

    sget-object p2, Lnkx;->j:Lnww;

    aput-object p2, v1, p1

    const/16 p1, 0x9

    const-string p2, "h"

    aput-object p2, v1, p1

    const/16 p1, 0xa

    sget-object p2, Lnjv;->b:Lnww;

    aput-object p2, v1, p1

    const/16 p1, 0xb

    const-string p2, "i"

    aput-object p2, v1, p1

    sget-object p1, Lnlh;->j:Lnlh;

    invoke-static {p1, v0, v1}, Lnlh;->X(Lnxy;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

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
