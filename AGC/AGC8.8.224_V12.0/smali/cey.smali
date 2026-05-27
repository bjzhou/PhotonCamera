.class public final Lcey;
.super Ljava/lang/Object;


# static fields
.field private static final b:Lcew;


# instance fields
.field public a:Lcew;

.field private final c:Ljuh;

.field private final d:Lcex;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lceg;

    invoke-direct {v0}, Lceg;-><init>()V

    sput-object v0, Lcey;->b:Lcew;

    return-void
.end method

.method public constructor <init>(Ljuh;Lcex;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcey;->c:Ljuh;

    iput-object p2, p0, Lcey;->d:Lcex;

    return-void
.end method


# virtual methods
.method public final a(Ljgt;)Lcew;
    .locals 2

    iget-object v0, p0, Lcey;->a:Lcew;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcew;->c()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcey;->b:Lcew;

    return-object p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcey;->d:Lcex;

    invoke-interface {v0, p1}, Lcex;->a(Ljgt;)Lcew;

    move-result-object p1

    iput-object p1, p0, Lcey;->a:Lcew;

    iget-object p1, p0, Lcey;->c:Ljuh;

    new-instance v0, Lcdw;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lcdw;-><init>(Lcey;I)V

    invoke-virtual {p1, v0}, Ljuh;->execute(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcey;->a:Lcew;

    return-object p1
.end method
