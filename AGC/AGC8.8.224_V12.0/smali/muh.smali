.class public abstract Lmuh;
.super Ljava/lang/Object;


# instance fields
.field final b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmuh;->b:Z

    return-void
.end method

.method public static g()Lmuh;
    .locals 1

    sget-object v0, Lmug;->a:Lmug;

    return-object v0
.end method


# virtual methods
.method public abstract a(Ljava/lang/Comparable;Ljava/lang/Comparable;)J
.end method

.method public b()Ljava/lang/Comparable;
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public c()Ljava/lang/Comparable;
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public abstract d(Ljava/lang/Comparable;)Ljava/lang/Comparable;
.end method

.method public e(Ljava/lang/Comparable;J)Ljava/lang/Comparable;
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public abstract f(Ljava/lang/Comparable;)Ljava/lang/Comparable;
.end method
