.class public final Lnzu;
.super Lnws;

# interfaces
.implements Lnxz;


# static fields
.field public static final b:Lnzu;

.field private static volatile c:Lnyf;


# instance fields
.field public a:Lnxa;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnzu;

    invoke-direct {v0}, Lnzu;-><init>()V

    sput-object v0, Lnzu;->b:Lnzu;

    const-class v1, Lnzu;

    invoke-static {v1, v0}, Lnws;->aa(Ljava/lang/Class;Lnws;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnws;-><init>()V

    sget-object v0, Lnyi;->b:Lnyi;

    iput-object v0, p0, Lnzu;->a:Lnxa;

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
    sget-object p1, Lnzu;->c:Lnyf;

    if-nez p1, :cond_1

    const-class p2, Lnzu;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lnzu;->c:Lnyf;

    if-nez p1, :cond_0

    new-instance p1, Lnwo;

    sget-object v0, Lnzu;->b:Lnzu;

    invoke-direct {p1, v0}, Lnwo;-><init>(Lnws;)V

    sput-object p1, Lnzu;->c:Lnyf;

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
    sget-object p1, Lnzu;->b:Lnzu;

    return-object p1

    :pswitch_3
    new-instance p1, Lnwn;

    sget-object p2, Lnzu;->b:Lnzu;

    invoke-direct {p1, p2}, Lnwn;-><init>(Lnws;)V

    return-object p1

    :pswitch_4
    new-instance p1, Lnzu;

    invoke-direct {p1}, Lnzu;-><init>()V

    return-object p1

    :pswitch_5
    const-string p1, "a"

    const-string v0, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-class p1, Lnzv;

    aput-object p1, v1, p2

    sget-object p1, Lnzu;->b:Lnzu;

    invoke-static {p1, v0, v1}, Lnzu;->X(Lnxy;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_6
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

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
