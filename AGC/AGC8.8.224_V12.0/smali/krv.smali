.class public final Lkrv;
.super Ljava/lang/Object;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lmqp;

.field public c:Lmqp;

.field public d:Lmqp;

.field public e:B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, Lmpx;->a:Lmpx;

    iput-object p1, p0, Lkrv;->b:Lmqp;

    iput-object p1, p0, Lkrv;->c:Lmqp;

    iput-object p1, p0, Lkrv;->d:Lmqp;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    iput-byte v0, p0, Lkrv;->e:B

    return-void
.end method
