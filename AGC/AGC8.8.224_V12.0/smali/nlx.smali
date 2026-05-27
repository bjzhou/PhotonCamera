.class public final Lnlx;
.super Lnws;

# interfaces
.implements Lnxz;


# static fields
.field public static final f:Lnlx;

.field private static volatile h:Lnyf;


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/lang/Object;

.field public d:Lnlu;

.field public e:Lnxa;

.field private g:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnlx;

    invoke-direct {v0}, Lnlx;-><init>()V

    sput-object v0, Lnlx;->f:Lnlx;

    const-class v1, Lnlx;

    invoke-static {v1, v0}, Lnws;->aa(Ljava/lang/Class;Lnws;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnws;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lnlx;->b:I

    const/4 v0, 0x2

    iput-byte v0, p0, Lnlx;->g:B

    sget-object v0, Lnyi;->b:Lnyi;

    iput-object v0, p0, Lnlx;->e:Lnxa;

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

    goto :goto_1

    :pswitch_1
    sget-object p1, Lnlx;->h:Lnyf;

    if-nez p1, :cond_1

    const-class p2, Lnlx;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lnlx;->h:Lnyf;

    if-nez p1, :cond_0

    new-instance p1, Lnwo;

    sget-object v0, Lnlx;->f:Lnlx;

    invoke-direct {p1, v0}, Lnwo;-><init>(Lnws;)V

    sput-object p1, Lnlx;->h:Lnyf;

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
    sget-object p1, Lnlx;->f:Lnlx;

    return-object p1

    :pswitch_3
    new-instance p1, Lnwn;

    sget-object p2, Lnlx;->f:Lnlx;

    invoke-direct {p1, p2}, Lnwn;-><init>(Lnws;)V

    return-object p1

    :pswitch_4
    new-instance p1, Lnlx;

    invoke-direct {p1}, Lnlx;-><init>()V

    return-object p1

    :pswitch_5
    const-string p1, "c"

    const-string p2, "\u0001\u0003\u0001\u0001\u0001\u0004\u0003\u0000\u0001\u0003\u0001\u1509\u0000\u0002\u041b\u0004\u143c\u0000"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const-string v0, "c"

    aput-object p1, v2, v0

    const/4 p1, 0x2

    const-string v0, "a"

    aput-object v0, v2, p1

    const/4 p1, 0x3

    const-string v0, "d"

    aput-object v0, v2, p1

    const/4 p1, 0x4

    const-string v0, "e"

    aput-object v0, v2, p1

    const/4 p1, 0x5

    const-class v0, Lnlu;

    aput-object v0, v2, p1

    const/4 p1, 0x6

    const-class v0, Lnlv;

    aput-object v0, v2, p1

    sget-object p1, Lnlx;->f:Lnlx;

    invoke-static {p1, p2, v2}, Lnlx;->X(Lnxy;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_6
    iget-byte p1, p0, Lnlx;->g:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_1
    iput-byte v0, p0, Lnlx;->g:B

    const/4 p1, 0x0

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

.method public final b()V
    .locals 2

    iget-object v0, p0, Lnlx;->e:Lnxa;

    invoke-interface {v0}, Lnxa;->c()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lnws;->U(Lnxa;)Lnxa;

    move-result-object v0

    iput-object v0, p0, Lnlx;->e:Lnxa;

    :cond_0
    return-void
.end method
