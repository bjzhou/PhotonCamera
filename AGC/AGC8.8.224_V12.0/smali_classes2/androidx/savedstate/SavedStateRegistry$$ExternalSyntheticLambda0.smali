.class public final synthetic Landroidx/savedstate/SavedStateRegistry$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lakt;


# instance fields
.field public final synthetic a:Laqm;


# direct methods
.method public synthetic constructor <init>(Laqm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/savedstate/SavedStateRegistry$$ExternalSyntheticLambda0;->a:Laqm;

    return-void
.end method


# virtual methods
.method public final a(Lakv;Lakq;)V
    .locals 1

    iget-object p1, p0, Landroidx/savedstate/SavedStateRegistry$$ExternalSyntheticLambda0;->a:Laqm;

    sget-object v0, Lakq;->ON_START:Lakq;

    if-ne p2, v0, :cond_0

    const/4 p2, 0x1

    :goto_0
    iput-boolean p2, p1, Laqm;->e:Z

    return-void

    :cond_0
    sget-object v0, Lakq;->ON_STOP:Lakq;

    if-ne p2, v0, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    return-void
.end method
