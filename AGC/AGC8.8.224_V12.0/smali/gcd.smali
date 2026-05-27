.class final Lgcd;
.super Ljwi;


# instance fields
.field private final a:Lgcc;


# direct methods
.method public constructor <init>(Ljwb;Lgcc;)V
    .locals 0

    invoke-direct {p0, p1}, Ljwi;-><init>(Ljwb;)V

    iput-object p2, p0, Lgcd;->a:Lgcc;

    return-void
.end method


# virtual methods
.method public final bridge synthetic b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lgcd;->a:Lgcc;

    invoke-static {p1, v0}, Lgcc;->a(Ljava/lang/String;Lgcc;)Lgcc;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lgcc;

    iget-object p1, p1, Lgcc;->d:Ljava/lang/String;

    return-object p1
.end method
