.class public final Lorj;
.super Ljava/lang/Object;


# static fields
.field public static final a:Loxb;

.field public static final b:Loxb;

.field public static final c:Loxb;

.field public static final d:Loxb;

.field public static final e:Loxb;

.field public static final f:Loqk;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Loxb;

    const-string v1, "COMPLETING_ALREADY"

    invoke-direct {v0, v1}, Loxb;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorj;->a:Loxb;

    new-instance v0, Loxb;

    const-string v1, "COMPLETING_WAITING_CHILDREN"

    invoke-direct {v0, v1}, Loxb;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorj;->b:Loxb;

    new-instance v0, Loxb;

    const-string v1, "COMPLETING_RETRY"

    invoke-direct {v0, v1}, Loxb;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorj;->c:Loxb;

    new-instance v0, Loxb;

    const-string v1, "TOO_LATE_TO_CANCEL"

    invoke-direct {v0, v1}, Loxb;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorj;->d:Loxb;

    new-instance v0, Loxb;

    const-string v1, "SEALED"

    invoke-direct {v0, v1}, Loxb;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorj;->e:Loxb;

    new-instance v0, Loqk;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Loqk;-><init>(Z)V

    sput-object v0, Lorj;->f:Loqk;

    return-void
.end method

.method public static final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    instance-of v0, p0, Loqw;

    if-eqz v0, :cond_0

    new-instance v0, Loqx;

    check-cast p0, Loqw;

    invoke-direct {v0, p0}, Loqx;-><init>(Loqw;)V

    return-object v0

    :cond_0
    return-object p0
.end method

.method public static final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    instance-of v0, p0, Loqx;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Loqx;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object p0, v0, Loqx;->a:Loqw;

    :cond_1
    return-object p0
.end method
