.class public final Lowd;
.super Ljava/lang/Object;


# static fields
.field public static final a:Loxb;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Loxb;

    const-string v1, "CLOSED"

    invoke-direct {v0, v1}, Loxb;-><init>(Ljava/lang/String;)V

    sput-object v0, Lowd;->a:Loxb;

    return-void
.end method
