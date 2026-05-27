.class public final synthetic Lied;
.super Ljava/lang/Object;

# interfaces
.implements Lchr;


# instance fields
.field public final synthetic a:Liee;

.field public final synthetic b:Ljuh;


# direct methods
.method public synthetic constructor <init>(Liee;Ljuh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lied;->a:Liee;

    iput-object p2, p0, Lied;->b:Ljuh;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 3

    iget-object p1, p0, Lied;->a:Liee;

    iget-object v0, p0, Lied;->b:Ljuh;

    new-instance v1, Licv;

    const/4 v2, 0x3

    invoke-direct {v1, p1, v2}, Licv;-><init>(Liee;I)V

    invoke-virtual {v0, v1}, Ljuh;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
