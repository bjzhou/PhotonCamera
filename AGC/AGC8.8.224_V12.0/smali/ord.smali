.class public Lord;
.super Lori;

# interfaces
.implements Lora;


# instance fields
.field private final a:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lori;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lori;->C(Lora;)V

    invoke-virtual {p0}, Lori;->df()Lope;

    move-result-object v1

    instance-of v2, v1, Lopf;

    if-eqz v2, :cond_0

    check-cast v1, Lopf;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lore;->e()Lori;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v1}, Lori;->cJ()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lori;->df()Lope;

    move-result-object v1

    instance-of v3, v1, Lopf;

    if-eqz v3, :cond_3

    check-cast v1, Lopf;

    goto :goto_1

    :cond_3
    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lore;->e()Lori;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_4
    :goto_2
    iput-boolean v2, p0, Lord;->a:Z

    return-void
.end method


# virtual methods
.method public final cJ()Z
    .locals 1

    iget-boolean v0, p0, Lord;->a:Z

    return v0
.end method

.method public final cK()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
