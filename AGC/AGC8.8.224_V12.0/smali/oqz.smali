.class final Loqz;
.super Lorc;


# instance fields
.field private final a:Lomk;

.field private final e:Loon;


# direct methods
.method public constructor <init>(Lomk;)V
    .locals 0

    invoke-direct {p0}, Lorc;-><init>()V

    iput-object p1, p0, Loqz;->a:Lomk;

    const/4 p1, 0x0

    invoke-static {p1}, Lolp;->i(I)Loon;

    move-result-object p1

    iput-object p1, p0, Loqz;->e:Loon;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Loqz;->b(Ljava/lang/Throwable;)V

    sget-object p1, Lojk;->a:Lojk;

    return-object p1
.end method

.method public final b(Ljava/lang/Throwable;)V
    .locals 3

    iget-object v0, p0, Loqz;->e:Loon;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Loon;->c(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Loqz;->a:Lomk;

    invoke-interface {v0, p1}, Lomk;->a(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
