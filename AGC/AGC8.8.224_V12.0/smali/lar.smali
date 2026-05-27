.class public final Llar;
.super Llaq;


# direct methods
.method public constructor <init>(Lkym;)V
    .locals 1

    sget-object v0, Llap;->i:Llal;

    invoke-direct {p0, v0, p1}, Llaq;-><init>(Llad;Lkym;)V

    return-void
.end method

.method public constructor <init>(Lkym;I)V
    .locals 1

    sget-object v0, Llap;->i:Llal;

    invoke-direct {p0, v0, p1, p2}, Llaq;-><init>(Llad;Lkym;I)V

    return-void
.end method

.method public static final c(Lkyn;)Llar;
    .locals 1

    new-instance v0, Llar;

    invoke-virtual {p0}, Lkyn;->c()Lkym;

    move-result-object p0

    invoke-direct {v0, p0}, Llar;-><init>(Lkym;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic a(Lkyn;)Llaq;
    .locals 0

    invoke-static {p1}, Llar;->c(Lkyn;)Llar;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic b(Lkyn;)Llaq;
    .locals 0

    invoke-static {p1}, Llar;->c(Lkyn;)Llar;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "RGBA8888"

    return-object v0
.end method
