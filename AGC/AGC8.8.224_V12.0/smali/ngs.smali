.class public final Lngs;
.super Lnws;

# interfaces
.implements Lnxz;


# static fields
.field public static final m:Lngs;

.field private static volatile n:Lnyf;


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:I

.field public f:I

.field public g:I

.field public h:Lniw;

.field public i:Lnwy;

.field public j:I

.field public k:Z

.field public l:Lnxa;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lngs;

    invoke-direct {v0}, Lngs;-><init>()V

    sput-object v0, Lngs;->m:Lngs;

    const-class v1, Lngs;

    invoke-static {v1, v0}, Lnws;->aa(Ljava/lang/Class;Lnws;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnws;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lngs;->c:Ljava/lang/String;

    iput-object v0, p0, Lngs;->d:Ljava/lang/String;

    sget-object v0, Lnwt;->b:Lnwt;

    iput-object v0, p0, Lngs;->i:Lnwy;

    sget-object v0, Lnyi;->b:Lnyi;

    iput-object v0, p0, Lngs;->l:Lnxa;

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
    sget-object p1, Lngs;->n:Lnyf;

    if-nez p1, :cond_1

    const-class p2, Lngs;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lngs;->n:Lnyf;

    if-nez p1, :cond_0

    new-instance p1, Lnwo;

    sget-object v0, Lngs;->m:Lngs;

    invoke-direct {p1, v0}, Lnwo;-><init>(Lnws;)V

    sput-object p1, Lngs;->n:Lnyf;

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
    sget-object p1, Lngs;->m:Lngs;

    return-object p1

    :pswitch_3
    new-instance p1, Lnwn;

    sget-object p2, Lngs;->m:Lngs;

    invoke-direct {p1, p2}, Lnwn;-><init>(Lnws;)V

    return-object p1

    :pswitch_4
    new-instance p1, Lngs;

    invoke-direct {p1}, Lngs;-><init>()V

    return-object p1

    :pswitch_5
    const-string p1, "a"

    const-string v0, "\u0001\u000b\u0000\u0001\u0001\r\u000b\u0000\u0002\u0000\u0001\u100c\u0000\u0002\u1008\u0001\u0003\u1008\u0002\u0004\u1004\u0003\u0005\u1004\u0004\u0007\u1004\u0006\u0008\u1009\u0007\n\u001e\u000b\u1004\u0008\u000c\u1007\t\r\u001a"

    const/16 v1, 0xe

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "b"

    aput-object p1, v1, p2

    const/4 p1, 0x2

    sget-object p2, Lkuf;->u:Lnww;

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

    sget-object p2, Lkuf;->p:Lnww;

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

    sget-object p1, Lngs;->m:Lngs;

    invoke-static {p1, v0, v1}, Lngs;->X(Lnxy;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

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
