.class public final Loyc;
.super Lnws;

# interfaces
.implements Lnxz;


# static fields
.field public static final k:Loyc;

.field private static volatile m:Lnyf;


# instance fields
.field public a:I

.field public b:I

.field public c:J

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Loym;

.field public g:I

.field public h:J

.field public i:Loyl;

.field public j:J

.field private l:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Loyc;

    invoke-direct {v0}, Loyc;-><init>()V

    sput-object v0, Loyc;->k:Loyc;

    const-class v1, Loyc;

    invoke-static {v1, v0}, Lnws;->aa(Ljava/lang/Class;Lnws;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnws;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Loyc;->l:B

    const-string v0, ""

    iput-object v0, p0, Loyc;->d:Ljava/lang/String;

    iput-object v0, p0, Loyc;->e:Ljava/lang/String;

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
    sget-object p1, Loyc;->m:Lnyf;

    if-nez p1, :cond_1

    const-class p2, Loyc;

    monitor-enter p2

    :try_start_0
    sget-object p1, Loyc;->m:Lnyf;

    if-nez p1, :cond_0

    new-instance p1, Lnwo;

    sget-object v0, Loyc;->k:Loyc;

    invoke-direct {p1, v0}, Lnwo;-><init>(Lnws;)V

    sput-object p1, Loyc;->m:Lnyf;

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
    sget-object p1, Loyc;->k:Loyc;

    return-object p1

    :pswitch_3
    new-instance p1, Lnwn;

    sget-object p2, Loyc;->k:Loyc;

    invoke-direct {p1, p2}, Lnwn;-><init>(Lnws;)V

    return-object p1

    :pswitch_4
    new-instance p1, Loyc;

    invoke-direct {p1}, Loyc;-><init>()V

    return-object p1

    :pswitch_5
    const-string p1, "a"

    const-string p2, "\u0001\t\u0000\u0001\u0001\u000b\t\u0000\u0000\u0001\u0001\u100c\u0000\u0002\u100c\u0005\u0003\u1002\u0006\u0006\u1009\u0007\u0007\u1002\u0008\u0008\u1005\u0001\t\u1008\u0002\n\u1008\u0003\u000b\u1409\u0004"

    const/16 v2, 0xc

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const-string p1, "b"

    aput-object p1, v2, v0

    sget-object p1, Lnzw;->q:Lnww;

    const/4 v0, 0x2

    aput-object p1, v2, v0

    const/4 p1, 0x3

    const-string v0, "g"

    aput-object v0, v2, p1

    const/4 p1, 0x4

    sget-object v0, Lnzw;->q:Lnww;

    aput-object v0, v2, p1

    const/4 p1, 0x5

    const-string v0, "h"

    aput-object v0, v2, p1

    const/4 p1, 0x6

    const-string v0, "i"

    aput-object v0, v2, p1

    const/4 p1, 0x7

    const-string v0, "j"

    aput-object v0, v2, p1

    const/16 p1, 0x8

    const-string v0, "c"

    aput-object v0, v2, p1

    const/16 p1, 0x9

    const-string v0, "d"

    aput-object v0, v2, p1

    const/16 p1, 0xa

    const-string v0, "e"

    aput-object v0, v2, p1

    const/16 p1, 0xb

    const-string v0, "f"

    aput-object v0, v2, p1

    sget-object p1, Loyc;->k:Loyc;

    invoke-static {p1, p2, v2}, Loyc;->X(Lnxy;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_6
    iget-byte p1, p0, Loyc;->l:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_1
    iput-byte v0, p0, Loyc;->l:B

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
