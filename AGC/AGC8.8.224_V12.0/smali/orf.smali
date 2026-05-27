.class final Lorf;
.super Lore;


# instance fields
.field private final a:Lori;

.field private final e:Lorg;

.field private final f:Lopf;

.field private final g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lori;Lorg;Lopf;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lore;-><init>()V

    iput-object p1, p0, Lorf;->a:Lori;

    iput-object p2, p0, Lorf;->e:Lorg;

    iput-object p3, p0, Lorf;->f:Lopf;

    iput-object p4, p0, Lorf;->g:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lorf;->b(Ljava/lang/Throwable;)V

    sget-object p1, Lojk;->a:Lojk;

    return-object p1
.end method

.method public final b(Ljava/lang/Throwable;)V
    .locals 4

    iget-object p1, p0, Lorf;->a:Lori;

    iget-object v0, p0, Lorf;->e:Lorg;

    iget-object v1, p0, Lorf;->f:Lopf;

    iget-object v2, p0, Lorf;->g:Ljava/lang/Object;

    sget-boolean v3, Lopw;->a:Z

    invoke-static {v1}, Lori;->J(Lowr;)Lopf;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0, v1, v2}, Lori;->I(Lorg;Lopf;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, v0, v2}, Lori;->v(Lorg;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lori;->f(Ljava/lang/Object;)V

    return-void
.end method
