.class public final Lgzv;
.super Ljwi;


# direct methods
.method public constructor <init>(Ljwb;)V
    .locals 0

    invoke-direct {p0, p1}, Ljwi;-><init>(Ljwb;)V

    return-void
.end method


# virtual methods
.method public final synthetic b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lgyr;->a(Ljava/lang/String;)Lgyr;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lgyr;

    invoke-virtual {p1}, Lgyr;->name()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
