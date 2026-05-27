.class public final Lkug;
.super Lnws;

# interfaces
.implements Lnxz;


# static fields
.field public static final f:Lkug;

.field private static volatile g:Lnyf;


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkug;

    invoke-direct {v0}, Lkug;-><init>()V

    sput-object v0, Lkug;->f:Lkug;

    const-class v1, Lkug;

    invoke-static {v1, v0}, Lnws;->aa(Ljava/lang/Class;Lnws;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnws;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lkug;->b:Ljava/lang/String;

    iput-object v0, p0, Lkug;->c:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lkug;->d:I

    iput v0, p0, Lkug;->e:I

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
    sget-object p1, Lkug;->g:Lnyf;

    if-nez p1, :cond_1

    const-class p2, Lkug;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lkug;->g:Lnyf;

    if-nez p1, :cond_0

    new-instance p1, Lnwo;

    sget-object v0, Lkug;->f:Lkug;

    invoke-direct {p1, v0}, Lnwo;-><init>(Lnws;)V

    sput-object p1, Lkug;->g:Lnyf;

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
    sget-object p1, Lkug;->f:Lkug;

    return-object p1

    :pswitch_3
    new-instance p1, Lnwn;

    sget-object p2, Lkug;->f:Lkug;

    invoke-direct {p1, p2}, Lnwn;-><init>(Lnws;)V

    return-object p1

    :pswitch_4
    new-instance p1, Lkug;

    invoke-direct {p1}, Lkug;-><init>()V

    return-object p1

    :pswitch_5
    const-string p1, "a"

    const-string v0, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u100c\u0002\u0004\u100c\u0003"

    const/4 v1, 0x7

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

    sget-object p1, Lkuf;->a:Lnww;

    const/4 p2, 0x6

    aput-object p1, v1, p2

    const/4 p2, 0x4

    aput-object p1, v1, p2

    const/4 p1, 0x5

    const-string p2, "e"

    aput-object p2, v1, p1

    sget-object p1, Lkug;->f:Lkug;

    invoke-static {p1, v0, v1}, Lkug;->X(Lnxy;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

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
