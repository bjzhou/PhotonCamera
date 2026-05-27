.class public final Llei;
.super Llej;


# instance fields
.field private final b:Ljava/lang/AutoCloseable;


# direct methods
.method public constructor <init>(Llel;Ljava/lang/AutoCloseable;)V
    .locals 0

    invoke-direct {p0, p1}, Llej;-><init>(Llel;)V

    iput-object p2, p0, Llei;->b:Ljava/lang/AutoCloseable;

    return-void
.end method


# virtual methods
.method public final e(I)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Llei;->b:Ljava/lang/AutoCloseable;

    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CloseOnStopListener"

    const-string v2, "Exception while trying to close object."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    invoke-super {p0, p1}, Llej;->e(I)V

    return-void
.end method
