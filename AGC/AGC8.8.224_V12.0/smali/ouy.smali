.class public final Louy;
.super Ljava/lang/Object;


# static fields
.field public static final a:Loxb;

.field public static final b:Loxb;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Loxb;

    const-string v1, "NONE"

    invoke-direct {v0, v1}, Loxb;-><init>(Ljava/lang/String;)V

    sput-object v0, Louy;->a:Loxb;

    new-instance v0, Loxb;

    const-string v1, "PENDING"

    invoke-direct {v0, v1}, Loxb;-><init>(Ljava/lang/String;)V

    sput-object v0, Louy;->b:Loxb;

    return-void
.end method

.method public static final a(Ljava/lang/Object;)Louo;
    .locals 1

    new-instance v0, Loux;

    if-nez p0, :cond_0

    sget-object p0, Lovo;->a:Loxb;

    :cond_0
    invoke-direct {v0, p0}, Loux;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
