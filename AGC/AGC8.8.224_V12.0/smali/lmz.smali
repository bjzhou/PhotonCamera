.class final Llmz;
.super Llnc;


# instance fields
.field private final a:Z


# direct methods
.method public constructor <init>(Lozu;Z)V
    .locals 0

    invoke-direct {p0, p1}, Llnc;-><init>(Lozu;)V

    iput-boolean p2, p0, Llmz;->a:Z

    return-void
.end method

.method private final f(Ljava/lang/Long;)Lozu;
    .locals 1

    iget-boolean v0, p0, Llmz;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Llnc;->e(Ljava/lang/Long;)Lozu;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Llnc;->d()Lozu;

    move-result-object p1

    :goto_0
    return-object p1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)J
    .locals 2

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Llmz;->f(Ljava/lang/Long;)Lozu;

    move-result-object p1

    sget-object v0, Lozu;->d:Lozu;

    invoke-virtual {p1, v0}, Lnws;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x3e8

    return-wide v0

    :cond_0
    iget-wide v0, p1, Lozu;->b:J

    return-wide v0
.end method

.method public final b(Ljava/lang/Long;)Lozu;
    .locals 0

    invoke-direct {p0, p1}, Llmz;->f(Ljava/lang/Long;)Lozu;

    move-result-object p1

    return-object p1
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Llmz;->a:Z

    return v0
.end method
