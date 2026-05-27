.class public final Lpbj;
.super Lnws;

# interfaces
.implements Lnxz;


# static fields
.field public static final f:Lpbj;

.field private static volatile g:Lnyf;


# instance fields
.field public a:Lnxt;

.field public b:Lnxt;

.field public c:Lnxa;

.field public d:Lnwy;

.field public e:Lnxa;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lpbj;

    invoke-direct {v0}, Lpbj;-><init>()V

    sput-object v0, Lpbj;->f:Lpbj;

    const-class v1, Lpbj;

    invoke-static {v1, v0}, Lnws;->aa(Ljava/lang/Class;Lnws;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnws;-><init>()V

    sget-object v0, Lnxt;->a:Lnxt;

    iput-object v0, p0, Lpbj;->a:Lnxt;

    sget-object v0, Lnxt;->a:Lnxt;

    iput-object v0, p0, Lpbj;->b:Lnxt;

    sget-object v0, Lnyi;->b:Lnyi;

    iput-object v0, p0, Lpbj;->c:Lnxa;

    sget-object v0, Lnwt;->b:Lnwt;

    iput-object v0, p0, Lpbj;->d:Lnwy;

    sget-object v0, Lnyi;->b:Lnyi;

    iput-object v0, p0, Lpbj;->e:Lnxa;

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
    sget-object p1, Lpbj;->g:Lnyf;

    if-nez p1, :cond_1

    const-class p2, Lpbj;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lpbj;->g:Lnyf;

    if-nez p1, :cond_0

    new-instance p1, Lnwo;

    sget-object v0, Lpbj;->f:Lpbj;

    invoke-direct {p1, v0}, Lnwo;-><init>(Lnws;)V

    sput-object p1, Lpbj;->g:Lnyf;

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
    sget-object p1, Lpbj;->f:Lpbj;

    return-object p1

    :pswitch_3
    new-instance p1, Lnwn;

    sget-object p2, Lpbj;->f:Lpbj;

    invoke-direct {p1, p2}, Lnwn;-><init>(Lnws;)V

    return-object p1

    :pswitch_4
    new-instance p1, Lpbj;

    invoke-direct {p1}, Lpbj;-><init>()V

    return-object p1

    :pswitch_5
    const-string p1, "a"

    const-string v0, "\u0001\u0005\u0000\u0000\u0001\u0005\u0005\u0002\u0003\u0000\u00012\u00022\u0003\u001b\u0004\'\u0005\u001b"

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    sget-object p1, Lpbh;->a:Llzz;

    aput-object p1, v1, p2

    const/4 p1, 0x2

    const-string p2, "b"

    aput-object p2, v1, p1

    const/4 p1, 0x3

    sget-object p2, Lpbi;->a:Llzz;

    aput-object p2, v1, p1

    const/4 p1, 0x4

    const-string p2, "c"

    aput-object p2, v1, p1

    const/4 p1, 0x5

    const-class p2, Lpbg;

    aput-object p2, v1, p1

    const/4 p1, 0x6

    const-string p2, "d"

    aput-object p2, v1, p1

    const/4 p1, 0x7

    const-string p2, "e"

    aput-object p2, v1, p1

    const/16 p1, 0x8

    const-class p2, Lpbd;

    aput-object p2, v1, p1

    sget-object p1, Lpbj;->f:Lpbj;

    invoke-static {p1, v0, v1}, Lpbj;->X(Lnxy;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

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
