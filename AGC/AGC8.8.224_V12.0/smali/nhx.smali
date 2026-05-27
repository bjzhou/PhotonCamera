.class public final Lnhx;
.super Lnws;

# interfaces
.implements Lnxz;


# static fields
.field public static final k:Lnhx;

.field private static volatile l:Lnyf;


# instance fields
.field public a:I

.field public b:I

.field public c:Lnwx;

.field public d:Lnwx;

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:Z

.field public j:Lnwy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnhx;

    invoke-direct {v0}, Lnhx;-><init>()V

    sput-object v0, Lnhx;->k:Lnhx;

    const-class v1, Lnhx;

    invoke-static {v1, v0}, Lnws;->aa(Ljava/lang/Class;Lnws;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnws;-><init>()V

    sget-object v0, Lnwl;->b:Lnwl;

    iput-object v0, p0, Lnhx;->c:Lnwx;

    iput-object v0, p0, Lnhx;->d:Lnwx;

    sget-object v0, Lnwt;->b:Lnwt;

    iput-object v0, p0, Lnhx;->j:Lnwy;

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
    sget-object p1, Lnhx;->l:Lnyf;

    if-nez p1, :cond_1

    const-class p2, Lnhx;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lnhx;->l:Lnyf;

    if-nez p1, :cond_0

    new-instance p1, Lnwo;

    sget-object v0, Lnhx;->k:Lnhx;

    invoke-direct {p1, v0}, Lnwo;-><init>(Lnws;)V

    sput-object p1, Lnhx;->l:Lnyf;

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
    sget-object p1, Lnhx;->k:Lnhx;

    return-object p1

    :pswitch_3
    new-instance p1, Lnwn;

    sget-object p2, Lnhx;->k:Lnhx;

    invoke-direct {p1, p2}, Lnwn;-><init>(Lnws;)V

    return-object p1

    :pswitch_4
    new-instance p1, Lnhx;

    invoke-direct {p1}, Lnhx;-><init>()V

    return-object p1

    :pswitch_5
    const-string p1, "a"

    const-string v0, "\u0001\t\u0000\u0001\u0001\u000b\t\u0000\u0003\u0000\u0001\u100c\u0000\u0002\u0013\u0003\u0013\u0004\u1004\u0001\u0006\u1004\u0003\u0007\u1004\u0004\t\u1004\u0006\n\u1007\u0007\u000b,"

    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "b"

    aput-object p1, v1, p2

    const/4 p1, 0x2

    sget-object p2, Lngu;->u:Lnww;

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

    const-string p2, "g"

    aput-object p2, v1, p1

    const/16 p1, 0x8

    const-string p2, "h"

    aput-object p2, v1, p1

    const/16 p1, 0x9

    const-string p2, "i"

    aput-object p2, v1, p1

    const/16 p1, 0xa

    const-string p2, "j"

    aput-object p2, v1, p1

    const/16 p1, 0xb

    sget-object p2, Lozf;->g:Lnww;

    aput-object p2, v1, p1

    sget-object p1, Lnhx;->k:Lnhx;

    invoke-static {p1, v0, v1}, Lnhx;->X(Lnxy;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

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
