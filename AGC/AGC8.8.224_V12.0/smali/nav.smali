.class public final Lnav;
.super Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;Lnbe;[Ljava/lang/StackTraceElement;)V
    .locals 0

    invoke-virtual {p2}, Lnbe;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p3}, Lnav;->setStackTrace([Ljava/lang/StackTraceElement;)V

    return-void
.end method


# virtual methods
.method public final fillInStackTrace()Ljava/lang/Throwable;
    .locals 0

    return-object p0
.end method
