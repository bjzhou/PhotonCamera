.class public final Lbll;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic a:I

.field private static final b:Lbgm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lblk;

    invoke-direct {v0}, Lblk;-><init>()V

    sput-object v0, Lbll;->b:Lbgm;

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lbll;->b:Lbgm;

    check-cast v0, Lblk;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lblk;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lbll;->b:Lbgm;

    invoke-interface {v0, p0, p1}, Lbgm;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
