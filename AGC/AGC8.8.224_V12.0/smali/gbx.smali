.class public final Lgbx;
.super Ljwh;


# direct methods
.method public constructor <init>(Ljvs;)V
    .locals 0

    invoke-direct {p0, p1}, Ljwh;-><init>(Ljvs;)V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lgcf;

    sget-object v0, Lgcf;->c:Lgcf;

    invoke-virtual {p1, v0}, Lgcf;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
