.class public final Lmeo;
.super Lnws;

# interfaces
.implements Lnxz;


# static fields
.field public static final k:Lmeo;

.field private static volatile m:Lnyf;


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/lang/Object;

.field public d:Z

.field public e:Lnxa;

.field public f:Lnwx;

.field public g:F

.field public h:F

.field public i:F

.field public j:F

.field private l:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lmeo;

    invoke-direct {v0}, Lmeo;-><init>()V

    sput-object v0, Lmeo;->k:Lmeo;

    const-class v1, Lmeo;

    invoke-static {v1, v0}, Lnws;->aa(Ljava/lang/Class;Lnws;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnws;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lmeo;->b:I

    const/4 v0, 0x2

    iput-byte v0, p0, Lmeo;->l:B

    sget-object v0, Lnyi;->b:Lnyi;

    iput-object v0, p0, Lmeo;->e:Lnxa;

    sget-object v0, Lnwl;->b:Lnwl;

    iput-object v0, p0, Lmeo;->f:Lnwx;

    const v0, 0x3e19999a    # 0.15f

    iput v0, p0, Lmeo;->g:F

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
    sget-object p1, Lmeo;->m:Lnyf;

    if-nez p1, :cond_1

    const-class p2, Lmeo;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lmeo;->m:Lnyf;

    if-nez p1, :cond_0

    new-instance p1, Lnwo;

    sget-object v0, Lmeo;->k:Lmeo;

    invoke-direct {p1, v0}, Lnwo;-><init>(Lnws;)V

    sput-object p1, Lmeo;->m:Lnyf;

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
    sget-object p1, Lmeo;->k:Lmeo;

    return-object p1

    :pswitch_3
    new-instance p1, Lnwn;

    sget-object p2, Lmeo;->k:Lmeo;

    invoke-direct {p1, p2}, Lnwn;-><init>(Lnws;)V

    return-object p1

    :pswitch_4
    new-instance p1, Lmeo;

    invoke-direct {p1}, Lmeo;-><init>()V

    return-object p1

    :pswitch_5
    const-string p1, "c"

    const-string p2, "\u0001\u0008\u0001\u0001\u0002\u000b\u0008\u0000\u0002\u0001\u0002\u143c\u0000\u0003\u1007\u0000\u0004\u001b\u0005\u0013\u0006\u1001\u0003\u0007\u1001\u0004\u0008\u1001\u0005\u000b\u1001\u0006"

    const/16 v2, 0xc

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const-string p1, "b"

    aput-object p1, v2, v0

    const/4 p1, 0x2

    const-string v0, "a"

    aput-object v0, v2, p1

    const/4 p1, 0x3

    const-class v0, Lmep;

    aput-object v0, v2, p1

    const/4 p1, 0x4

    const-string v0, "d"

    aput-object v0, v2, p1

    const/4 p1, 0x5

    const-string v0, "e"

    aput-object v0, v2, p1

    const/4 p1, 0x6

    const-class v0, Lmel;

    aput-object v0, v2, p1

    const/4 p1, 0x7

    const-string v0, "f"

    aput-object v0, v2, p1

    const/16 p1, 0x8

    const-string v0, "g"

    aput-object v0, v2, p1

    const/16 p1, 0x9

    const-string v0, "h"

    aput-object v0, v2, p1

    const/16 p1, 0xa

    const-string v0, "i"

    aput-object v0, v2, p1

    const/16 p1, 0xb

    const-string v0, "j"

    aput-object v0, v2, p1

    sget-object p1, Lmeo;->k:Lmeo;

    invoke-static {p1, p2, v2}, Lmeo;->X(Lnxy;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_6
    iget-byte p1, p0, Lmeo;->l:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_1
    iput-byte v0, p0, Lmeo;->l:B

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
