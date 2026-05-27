.class public final Lgcg;
.super Ljwi;


# instance fields
.field private final a:Lgcf;


# direct methods
.method public constructor <init>(Ljwb;Lgcf;)V
    .locals 0

    invoke-direct {p0, p1}, Ljwi;-><init>(Ljwb;)V

    iput-object p2, p0, Lgcg;->a:Lgcf;

    return-void
.end method


# virtual methods
.method public final bridge synthetic b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lgcg;->a:Lgcf;

    sget-object v1, Lgcf;->b:Lgcf;

    iget-object v1, v1, Lgcf;->d:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lgcf;->b:Lgcf;

    goto :goto_0

    :cond_0
    sget-object v1, Lgcf;->c:Lgcf;

    iget-object v1, v1, Lgcf;->d:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lgcf;->c:Lgcf;

    goto :goto_0

    :cond_1
    sget-object v1, Lgcf;->a:Lgcf;

    iget-object v1, v1, Lgcf;->d:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lgcf;->a:Lgcf;

    return-object p1

    :cond_2
    :goto_0
    return-object v0
.end method

.method protected final synthetic c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lgcf;

    iget-object p1, p1, Lgcf;->d:Ljava/lang/String;

    return-object p1
.end method
