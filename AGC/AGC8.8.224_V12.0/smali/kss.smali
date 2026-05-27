.class public final Lkss;
.super Ljava/lang/Object;

# interfaces
.implements Lksk;


# instance fields
.field private final a:Lksl;

.field private final b:Loaf;

.field private final c:Lkrw;


# direct methods
.method public constructor <init>(Lksl;Loaf;Lkrw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkss;->a:Lksl;

    iput-object p2, p0, Lkss;->b:Loaf;

    iput-object p3, p0, Lkss;->c:Lkrw;

    return-void
.end method

.method private final b(Load;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p1, Load;->a:Lnwy;

    invoke-interface {v2}, Lnwy;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_2

    iget-object v2, p1, Load;->a:Lnwy;

    invoke-interface {v2, v1}, Lnwy;->d(I)I

    move-result v2

    invoke-static {v2}, Loac;->b(I)I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    move v3, v2

    :goto_1
    iget-object v2, p0, Lkss;->a:Lksl;

    iget-object v4, p0, Lkss;->c:Lkrw;

    invoke-interface {v2, v3, v4}, Lksl;->a(ILkrw;)Lksk;

    move-result-object v2

    invoke-interface {v2}, Lksk;->a()Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p1, Load;->b:Lnxa;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Loae;

    invoke-direct {p0, v1}, Lkss;->c(Loae;)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    :cond_4
    return v3
.end method

.method private final c(Loae;)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p1, Loae;->a:Lnwy;

    invoke-interface {v2}, Lnwy;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_2

    iget-object v2, p1, Loae;->a:Lnwy;

    invoke-interface {v2, v1}, Lnwy;->d(I)I

    move-result v2

    invoke-static {v2}, Loac;->b(I)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :cond_0
    iget-object v4, p0, Lkss;->a:Lksl;

    iget-object v5, p0, Lkss;->c:Lkrw;

    invoke-interface {v4, v2, v5}, Lksl;->a(ILkrw;)Lksk;

    move-result-object v2

    invoke-interface {v2}, Lksk;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    return v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p1, Loae;->b:Lnxa;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Load;

    invoke-direct {p0, v1}, Lkss;->b(Load;)Z

    move-result v1

    if-eqz v1, :cond_3

    return v3

    :cond_4
    return v0
.end method


# virtual methods
.method public final a()Z
    .locals 4

    iget-object v0, p0, Lkss;->b:Loaf;

    iget v1, v0, Loaf;->a:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v0, v0, Loaf;->b:Ljava/lang/Object;

    check-cast v0, Load;

    invoke-direct {p0, v0}, Lkss;->b(Load;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    :cond_0
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    iget-object v0, v0, Loaf;->b:Ljava/lang/Object;

    check-cast v0, Loae;

    invoke-direct {p0, v0}, Lkss;->c(Loae;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lkss;->a:Lksl;

    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    iget-object v0, v0, Loaf;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Loac;->b(I)I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move v3, v0

    goto :goto_0

    :cond_3
    :goto_0
    iget-object v0, p0, Lkss;->c:Lkrw;

    invoke-interface {v2, v3, v0}, Lksl;->a(ILkrw;)Lksk;

    move-result-object v0

    invoke-interface {v0}, Lksk;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
