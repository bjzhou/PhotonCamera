.class public final synthetic Lduz;
.super Ljava/lang/Object;

# interfaces
.implements Lduu;


# static fields
.field public static final synthetic a:Lduz;

.field public static final synthetic b:Lduz;


# instance fields
.field private final synthetic c:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lduz;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lduz;-><init>(I)V

    sput-object v0, Lduz;->b:Lduz;

    new-instance v0, Lduz;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lduz;-><init>(I)V

    sput-object v0, Lduz;->a:Lduz;

    return-void
.end method

.method private synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lduz;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lduv;)Z
    .locals 2

    iget v0, p0, Lduz;->c:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p1, Lduv;->a:Ljava/lang/Object;

    monitor-enter v0

    goto :goto_0

    :pswitch_0
    return v1

    :goto_0
    :try_start_0
    iput v1, p1, Lduv;->c:I

    monitor-exit v0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
