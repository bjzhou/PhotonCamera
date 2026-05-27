.class final Lghs;
.super Ljava/lang/Object;

# interfaces
.implements Lnoj;


# instance fields
.field final synthetic a:Lnph;


# direct methods
.method public constructor <init>(Lnph;)V
    .locals 0

    iput-object p1, p0, Lghs;->a:Lnph;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lghs;->a:Lnph;

    invoke-virtual {v0, p1}, Lnph;->a(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ljad;

    iget-object v0, p0, Lghs;->a:Lnph;

    invoke-virtual {v0, p1}, Lnph;->e(Ljava/lang/Object;)Z

    return-void
.end method
