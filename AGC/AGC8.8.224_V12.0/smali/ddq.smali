.class final Lddq;
.super Ljava/lang/Object;


# instance fields
.field public a:Lmwa;

.field public b:Lmqp;


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

    iput-object p1, p0, Lddq;->b:Lmqp;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;)V
    .locals 0

    invoke-static {p1}, Lmwa;->m(Ljava/util/Map;)Lmwa;

    move-result-object p1

    iput-object p1, p0, Lddq;->a:Lmwa;

    return-void
.end method
