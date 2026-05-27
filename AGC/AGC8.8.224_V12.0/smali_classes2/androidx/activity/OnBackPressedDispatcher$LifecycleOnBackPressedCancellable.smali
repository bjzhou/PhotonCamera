.class public final Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;
.super Ljava/lang/Object;

# interfaces
.implements Lakt;
.implements Lph;


# instance fields
.field final synthetic a:Lpr;

.field private final b:Laks;

.field private final c:Lpn;

.field private d:Lph;


# direct methods
.method public constructor <init>(Lpr;Laks;Lpn;)V
    .locals 0

    iput-object p1, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->a:Lpr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->b:Laks;

    iput-object p3, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->c:Lpn;

    invoke-virtual {p2, p0}, Laks;->a(Laku;)V

    return-void
.end method


# virtual methods
.method public final a(Lakv;Lakq;)V
    .locals 0

    sget-object p1, Lakq;->ON_START:Lakq;

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->a:Lpr;

    iget-object p2, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->c:Lpn;

    invoke-virtual {p1, p2}, Lpr;->a(Lpn;)Lph;

    move-result-object p1

    iput-object p1, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->d:Lph;

    return-void

    :cond_0
    sget-object p1, Lakq;->ON_STOP:Lakq;

    if-ne p2, p1, :cond_1

    iget-object p1, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->d:Lph;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lph;->b()V

    return-void

    :cond_1
    sget-object p1, Lakq;->ON_DESTROY:Lakq;

    if-ne p2, p1, :cond_2

    invoke-virtual {p0}, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->b()V

    return-void

    :cond_2
    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->b:Laks;

    invoke-virtual {v0, p0}, Laks;->c(Laku;)V

    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->c:Lpn;

    invoke-virtual {v0, p0}, Lpn;->c(Lph;)V

    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->d:Lph;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lph;->b()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->d:Lph;

    return-void
.end method
