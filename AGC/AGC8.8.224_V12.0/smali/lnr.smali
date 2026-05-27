.class public final Llnr;
.super Lnws;

# interfaces
.implements Lnxz;


# static fields
.field public static final i:Llnr;

.field public static final j:Llhj;

.field private static volatile k:Lnyf;


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Z

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Lnwy;

.field public h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Llnr;

    invoke-direct {v0}, Llnr;-><init>()V

    sput-object v0, Llnr;->i:Llnr;

    const-class v1, Llnr;

    invoke-static {v1, v0}, Lnws;->aa(Ljava/lang/Class;Lnws;)V

    sget-object v1, Llnj;->c:Llnj;

    sget-object v2, Lnzl;->k:Lnzl;

    const v3, 0x13f38d82

    invoke-static {v1, v0, v0, v3, v2}, Lnws;->af(Lnxy;Ljava/lang/Object;Lnxy;ILnzl;)Llhj;

    move-result-object v0

    sput-object v0, Llnr;->j:Llhj;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnws;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Llnr;->b:Ljava/lang/String;

    iput-object v0, p0, Llnr;->c:Ljava/lang/String;

    iput-object v0, p0, Llnr;->e:Ljava/lang/String;

    iput-object v0, p0, Llnr;->f:Ljava/lang/String;

    sget-object v0, Lnwt;->b:Lnwt;

    iput-object v0, p0, Llnr;->g:Lnwy;

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
    sget-object p1, Llnr;->k:Lnyf;

    if-nez p1, :cond_1

    const-class p2, Llnr;

    monitor-enter p2

    :try_start_0
    sget-object p1, Llnr;->k:Lnyf;

    if-nez p1, :cond_0

    new-instance p1, Lnwo;

    sget-object v0, Llnr;->i:Llnr;

    invoke-direct {p1, v0}, Lnwo;-><init>(Lnws;)V

    sput-object p1, Llnr;->k:Lnyf;

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
    sget-object p1, Llnr;->i:Llnr;

    return-object p1

    :pswitch_3
    new-instance p1, Lnwn;

    sget-object p2, Llnr;->i:Llnr;

    invoke-direct {p1, p2}, Lnwn;-><init>(Lnws;)V

    return-object p1

    :pswitch_4
    new-instance p1, Llnr;

    invoke-direct {p1}, Llnr;-><init>()V

    return-object p1

    :pswitch_5
    const-string p1, "a"

    const-string v0, "\u0001\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0001\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u1007\u0002\u0004\u1008\u0003\u0005\u1008\u0004\u0006\'\u0007\u1007\u0005"

    const/16 v1, 0x8

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

    sget-object p1, Llnr;->i:Llnr;

    invoke-static {p1, v0, v1}, Llnr;->X(Lnxy;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

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
